DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS departments;

CREATE TABLE Departments (
    dept_no VARCHAR(4)   NOT NULL,
    dept_name VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE Dept_Emp (
    emp_no VARCHAR(6)   NOT NULL,
    dept_no VARCHAR(4)   NOT NULL
);

CREATE TABLE Dept_Manager (
    dept_no VARCHAR(4)   NOT NULL,
    emp_no VARCHAR(6)   NOT NULL
);

CREATE TABLE Employees (
    emp_no VARCHAR(6)   NOT NULL,
    emp_title_id VARCHAR(5)   NOT NULL,
    birth_date VARCHAR(10)   NOT NULL,
    first_name VARCHAR(25)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date VARCHAR(10)   NOT NULL
);

CREATE TABLE Salaries (
    emp_no VARCHAR(6)   NOT NULL,
    salary VARCHAR(6)   NOT NULL
);

CREATE TABLE Titles (
    title_id VARCHAR(5)   NOT NULL,
    title VARCHAR(20)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
     )
);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);