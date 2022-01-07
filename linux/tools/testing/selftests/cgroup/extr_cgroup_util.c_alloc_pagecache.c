
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;
typedef int buf ;


 int PAGE_SIZE ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ ftruncate (int,size_t) ;
 int read (int,char*,int) ;

int alloc_pagecache(int fd, size_t size)
{
 char buf[PAGE_SIZE];
 struct stat st;
 int i;

 if (fstat(fd, &st))
  goto cleanup;

 size += st.st_size;

 if (ftruncate(fd, size))
  goto cleanup;

 for (i = 0; i < size; i += sizeof(buf))
  read(fd, buf, sizeof(buf));

 return 0;

cleanup:
 return -1;
}
