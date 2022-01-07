
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
typedef int buf ;


 int min (scalar_t__,scalar_t__) ;
 scalar_t__ read (int,char*,int ) ;

__attribute__((used)) static int skipn(int fd, off_t n)
{
 char buf[4096];
 ssize_t ret;

 while (n > 0) {
  ret = read(fd, buf, min(n, (off_t)sizeof(buf)));
  if (ret <= 0)
   return ret;
  n -= ret;
 }

 return 0;
}
