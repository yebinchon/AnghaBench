
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int pwrite64 (int,char const*,int,unsigned long long) ;

int write_file(int fd, unsigned long long *offset, const char *buf, int len)
{
 int n;

 n = pwrite64(fd, buf, len, *offset);
 if (n < 0)
  return -errno;
 *offset += n;
 return n;
}
