
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* setlease ) (struct file*,long,struct file_lock**,void**) ;} ;


 int generic_setlease (struct file*,long,struct file_lock**,void**) ;
 int setlease_notifier (long,struct file_lock*) ;
 int stub1 (struct file*,long,struct file_lock**,void**) ;

int
vfs_setlease(struct file *filp, long arg, struct file_lock **lease, void **priv)
{
 if (lease)
  setlease_notifier(arg, *lease);
 if (filp->f_op->setlease)
  return filp->f_op->setlease(filp, arg, lease, priv);
 else
  return generic_setlease(filp, arg, lease, priv);
}
