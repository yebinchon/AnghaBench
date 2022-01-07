
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long F_UNLCK ;
 int do_fcntl_add_lease (unsigned int,struct file*,long) ;
 int vfs_setlease (struct file*,long,int *,void**) ;

int fcntl_setlease(unsigned int fd, struct file *filp, long arg)
{
 if (arg == F_UNLCK)
  return vfs_setlease(filp, F_UNLCK, ((void*)0), (void **)&filp);
 return do_fcntl_add_lease(fd, filp, arg);
}
