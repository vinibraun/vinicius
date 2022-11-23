create table category (
    id bigint generated by default as identity,
    name varchar(50) not null,
    primary key (id)
);

create table product (
    id bigint generated by default as identity,
    description varchar(1024) not null,
    name varchar(100) not null,
    price double not null,
    category_id bigint,
    primary key (id)
);
create table tb_user (
    id bigint generated by default as identity,
    display_name varchar(255),
    password varchar(255),
    username varchar(255),
    primary key (id)
);
alter table product add constraint FK_Category_Product
    foreign key (category_id) references category;