
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUF_SIZE ;
 int read (int,char*,int) ;

__attribute__((used)) static __attribute__((noinline))
void urandom_read(int fd, int count)
{
       char buf[BUF_SIZE];
       int i;

       for (i = 0; i < count; ++i)
               read(fd, buf, BUF_SIZE);
}
