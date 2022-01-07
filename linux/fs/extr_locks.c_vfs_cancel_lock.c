
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* lock ) (struct file*,int ,struct file_lock*) ;} ;


 int F_CANCELLK ;
 int stub1 (struct file*,int ,struct file_lock*) ;

int vfs_cancel_lock(struct file *filp, struct file_lock *fl)
{
 if (filp->f_op->lock)
  return filp->f_op->lock(filp, F_CANCELLK, fl);
 return 0;
}
