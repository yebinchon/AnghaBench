
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FMODE_PATH ;
 unsigned long __fget_light (unsigned int,int ) ;

unsigned long __fdget(unsigned int fd)
{
 return __fget_light(fd, FMODE_PATH);
}
