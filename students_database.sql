DROP TABLE student;
CREATE TABLE student(
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES (3, 'Clare');
INSERT INTO student VALUES(4, 'Sylvia', 'Computer Science');
INSERT INTO student VALUES(5, 'Mike', 'Chemistry');

SELECT * FROM student;

UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student 
SET major = 'Comp Sci'
WHERE student_id = 4;

UPDATE student
SET major = 'Biochemistry'
WHERE major = 'Bio' OR major = 'Chemistry';

UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 3;

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';

SELECT student.name, student.major FROM  student
ORDER BY student_id DESC
LIMIT 3;

SELECT student.name, student.major FROM  student
WHERE major IN ('Sociology', 'Computer Science');


