
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int pread64 (int,char*,int,unsigned long long) ;

int read_file(int fd, unsigned long long *offset, char *buf, int len)
{
 int n;

 n = pread64(fd, buf, len, *offset);
 if (n < 0)
  return -errno;
 *offset += n;
 return n;
}
