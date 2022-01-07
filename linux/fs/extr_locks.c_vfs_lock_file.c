
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* lock ) (struct file*,unsigned int,struct file_lock*) ;} ;


 int posix_lock_file (struct file*,struct file_lock*,struct file_lock*) ;
 int stub1 (struct file*,unsigned int,struct file_lock*) ;

int vfs_lock_file(struct file *filp, unsigned int cmd, struct file_lock *fl, struct file_lock *conf)
{
 if (filp->f_op->lock)
  return filp->f_op->lock(filp, cmd, fl);
 else
  return posix_lock_file(filp, fl, conf);
}
