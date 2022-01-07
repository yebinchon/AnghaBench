
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int FMODE_PATH ;
 struct file* __fget (unsigned int,int ,unsigned int) ;

struct file *fget_many(unsigned int fd, unsigned int refs)
{
 return __fget(fd, FMODE_PATH, refs);
}
