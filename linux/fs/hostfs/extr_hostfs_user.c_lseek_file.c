
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int lseek64 (int,long long,int) ;

int lseek_file(int fd, long long offset, int whence)
{
 int ret;

 ret = lseek64(fd, offset, whence);
 if (ret < 0)
  return -errno;
 return 0;
}
