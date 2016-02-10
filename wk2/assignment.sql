-- Tim Gasser submission for Module 3 Assignment
-- All statements below are in Oracle format

CREATE TABLE Customer
( CustNo          VARCHAR2(8)  ,
  CustName        VARCHAR2(30) ,
  Address         VARCHAR2(30) ,
  Internal        CHAR(1)      ,
  Contact         VARCHAR2(30) ,
  Phone           CHAR(15)     , -- (123) 456-7890
  City            VARCHAR2(20) , 
  State           CHAR(2)      ,
  Zip             CHAR(10)     , -- Could be long format ZIP (12345-6789)

  CONSTRAINT PK_CUSTOMER PRIMARY KEY (CustNo)

 );
 

CREATE TABLE Employee
( EmpNo           VARCHAR2(8)  ,
  EmpName         VARCHAR2(30) ,
  Department      VARCHAR2(30) ,
  Email           VARCHAR2(30) ,
  Phone           CHAR(15)     , -- Internal only? Allow enough for cellphone

  CONSTRAINT PK_EMPLOYEE PRIMARY KEY (EmpNo)

 );
 
CREATE TABLE Facility
( FacNo           VARCHAR2(8)  ,
  FacName         VARCHAR2(30) ,

  CONSTRAINT PK_EMPLOYEE PRIMARY KEY (EmpNo)

 );
 
CREATE TABLE Location
( LocNo           VARCHAR2(8)  ,
  FacNo           VARCHAR2(8)  ,
  LocName         VARCHAR2(30) ,

  CONSTRAINT PK_EMPLOYEE PRIMARY KEY (LocNo)

 );
 
CREATE TABLE ResourceTbl
( ResNo           VARCHAR2(8)  ,
  ResName         VARCHAR2(30) ,
  Rate            DECIMAL(3,2) ,

  CONSTRAINT PK_RESOURCE_TBL PRIMARY KEY (ResNo)

 );

CREATE TABLE EventRequest
( EventNo         VARCHAR2(8)  ,
  DateHeld        DATE         ,
  DateReq         DATE         ,
  FacNo           VARCHAR(8)   ,
  CustNo          VARCHAR(8)   ,
  DateAuth        DATE         ,
  Status          CHAR(10)     , -- {Approved, Pending, Denied}
  EstCost         DECIMAL(5,2) , -- Max $99999.99
  EstAudience     DECIMAL(5)   , -- Max 99999 people
  BudNo           VARCHAR2(8)  

  CONSTRAINT PK_EVENT_REQUEST PRIMARY KEY (EventNo)

 );

CREATE TABLE EventPlan
( PlanNo          VARCHAR2(8)  ,
  EventNo         VARCHAR2(8)  ,
  WorkDate        DATE         ,
  Notes           VARCHAR2(40) , -- {Operation, Cleanup, Setup}
  Activity        CHAR(10)     , 
  EmpNo           VARCHAR2(8)  ,

  CONSTRAINT PK_EVENT_PLAN PRIMARY KEY (PlanNo)

 );

CREATE TABLE EventPlanLine
( PlanNo          VARCHAR2(8)  ,
  LineNo          DECIMAL(2)   , -- Max 99 lines
  TimeStart       DATE         ,
  TimeEnd         DATE         ,
  NumberFld       DECIMAL(2)   , -- Max 99 fields
  LocNo           VARCHAR2(8)  ,
  ResNo           VARCHAR2(8)

  CONSTRAINT PK_EVENT_PLAN_LINE PRIMARY KEY (PlanNo)


 );


