
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ion (int,int,void*,size_t) ;

ssize_t readn(int fd, void *buf, size_t n)
{
 return ion(1, fd, buf, n);
}
