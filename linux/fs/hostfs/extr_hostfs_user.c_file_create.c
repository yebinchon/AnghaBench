
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int errno ;
 int open64 (char*,int,int) ;

int file_create(char *name, int mode)
{
 int fd;

 fd = open64(name, O_CREAT | O_RDWR, mode);
 if (fd < 0)
  return -errno;
 return fd;
}
