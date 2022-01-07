
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* unlocked_ioctl ) (struct file*,unsigned int,unsigned long) ;} ;


 int ENOIOCTLCMD ;
 int ENOTTY ;
 int stub1 (struct file*,unsigned int,unsigned long) ;

long vfs_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
 int error = -ENOTTY;

 if (!filp->f_op->unlocked_ioctl)
  goto out;

 error = filp->f_op->unlocked_ioctl(filp, cmd, arg);
 if (error == -ENOIOCTLCMD)
  error = -ENOTTY;
 out:
 return error;
}
