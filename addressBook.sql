create database AddressBookService;
use AddressBookService;
create table Address_book(id int unsigned not null auto_increment,

first_name varchar(15) not null,
last_name varchar(10) not null,

city varchar(50) not null,
state varchar(50) not null,

zip int not null,
phone long not null,
email varchar(100) not null,

primary key (id)
);
insert into Address_book (first_name, last_name, city, state, zip, phone, email) values ('suraj','more','pune','maharashtra',713207,7003321213,'subham@gmail.com');
insert into Address_book (first_name, last_name, city, state, zip, phone, email) values ('abhishek','pawar','mumbai','maharashtra',700207,956526813,'paul@gmail.com');
insert into Address_book (first_name, last_name, city, state, zip, phone, email) values ('saurav','kumar','nashik','maharashtra',95207,659889994,'saurav@gmail.com');
insert into Address_book (first_name, last_name, city, state, zip, phone, email) values ('sanjay','wadkar','kolhapur','maharashtra',2641,4632253,'sanjay@gmail.com');

update Address_Book set phone = 9508725582 where first_name ='suraj';
select * from Address_Book;

delete from Address_book where first_name ='suraj';

select *from Address_Book where city ='pune' or state = 'maharashtra';

select count(city or state)
FROM Address_book;

select * from Address_Book order by first_name;

 Alter table Address_book add type varchar(15) after last_name;

update Address_Book set type ='friend' where first_name = 'abhishek';
update Address_Book set type ='family' where first_name = 'sanjay';
update Address_Book set type ='professional' where first_name = 'saurav';

SELECT count(type) AS NumberOfContactPerson
FROM Address_book;