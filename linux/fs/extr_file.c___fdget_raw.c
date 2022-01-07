
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __fget_light (unsigned int,int ) ;

unsigned long __fdget_raw(unsigned int fd)
{
 return __fget_light(fd, 0);
}
