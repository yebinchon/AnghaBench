
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 struct file* __fget (unsigned int,int ,int) ;

struct file *fget_raw(unsigned int fd)
{
 return __fget(fd, 0, 1);
}
