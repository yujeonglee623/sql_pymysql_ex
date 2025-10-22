-- post 테이블 만들기
create table post(
	id int not null auto_increment primary key,
	title varchar(255) not null,
	content text not null
);

-- usersd 테이블 만들기
create table usersd(
	id int not null auto_increment primary key,
	name varchar(50) not null,
	phone varchar(30) not null,
	address varchar(100)
);


-- 데이터(행) 추가 명령(create)
insert into post(title, content)
	values('코딩', '재미있어요!');
insert into post(title, content)
	values('html', '웹 표준 언어');
insert into post(title, content)
	values('python', '잘 할 수 있다.');
insert into post(title, content)
	values('django', '풀스텍 개발 프레임워크');

insert into usersd(name, phone, address)
	values('kim', '010-1111-1111', 'seoul');
insert into usersd(name, phone, address)
	values('lee', '010-2222-2222', 'seoul');
insert into usersd(name, phone, address)
	values('song', '010-3333-3333', 'daegu');
insert into usersd(name, phone, address)
	values('park', '010-4444-4444', 'pusan');
insert into usersd(name, phone, address)
	values('lee', '010-5555-5555', 'daegu');

-- 데이터 조회 명령
select title, content
from post;

select *
from post
where id = 2;

select *
from post
where title like '코딩';

select title, content
from post
where id between 1 and 3;

select *
from usersd
where address in ('seoul', 'pusan', 'daegu');

select *
from post
order by title asc;

-- 데이터 수정 명령
update post
set title = '제목 수정 중',
	content = '본문 수정 중'
where id = 3;

-- 데이터 삭제 명령
delete from post
where id = 3;