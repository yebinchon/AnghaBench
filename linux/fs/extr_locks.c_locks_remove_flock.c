
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file_lock_context {int flc_flock; } ;
struct file_lock {TYPE_2__* fl_ops; int fl_flags; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_4__ {int (* fl_release_private ) (struct file_lock*) ;} ;
struct TYPE_3__ {int (* flock ) (struct file*,int ,struct file_lock*) ;} ;


 int FL_CLOSE ;
 int F_SETLKW ;
 int LOCK_UN ;
 int flock_lock_inode (struct inode*,struct file_lock*) ;
 int flock_make_lock (struct file*,int ,struct file_lock*) ;
 scalar_t__ list_empty (int *) ;
 struct inode* locks_inode (struct file*) ;
 int stub1 (struct file*,int ,struct file_lock*) ;
 int stub2 (struct file_lock*) ;

__attribute__((used)) static void
locks_remove_flock(struct file *filp, struct file_lock_context *flctx)
{
 struct file_lock fl;
 struct inode *inode = locks_inode(filp);

 if (list_empty(&flctx->flc_flock))
  return;

 flock_make_lock(filp, LOCK_UN, &fl);
 fl.fl_flags |= FL_CLOSE;

 if (filp->f_op->flock)
  filp->f_op->flock(filp, F_SETLKW, &fl);
 else
  flock_lock_inode(inode, &fl);

 if (fl.fl_ops && fl.fl_ops->fl_release_private)
  fl.fl_ops->fl_release_private(&fl);
}
