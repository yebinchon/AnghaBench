
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_flctx; } ;
struct file_lock_context {int flc_posix; } ;
struct file_lock {int fl_flags; TYPE_1__* fl_ops; int * fl_lmops; struct file* fl_file; int fl_pid; int fl_owner; int fl_end; scalar_t__ fl_start; int fl_type; } ;
struct file {int dummy; } ;
typedef int fl_owner_t ;
struct TYPE_4__ {int tgid; } ;
struct TYPE_3__ {int (* fl_release_private ) (struct file_lock*) ;} ;


 int FL_CLOSE ;
 int FL_POSIX ;
 int F_SETLK ;
 int F_UNLCK ;
 int OFFSET_MAX ;
 TYPE_2__* current ;
 scalar_t__ list_empty (int *) ;
 int locks_init_lock (struct file_lock*) ;
 struct inode* locks_inode (struct file*) ;
 struct file_lock_context* smp_load_acquire (int *) ;
 int stub1 (struct file_lock*) ;
 int trace_locks_remove_posix (struct inode*,struct file_lock*,int) ;
 int vfs_lock_file (struct file*,int ,struct file_lock*,int *) ;

void locks_remove_posix(struct file *filp, fl_owner_t owner)
{
 int error;
 struct inode *inode = locks_inode(filp);
 struct file_lock lock;
 struct file_lock_context *ctx;






 ctx = smp_load_acquire(&inode->i_flctx);
 if (!ctx || list_empty(&ctx->flc_posix))
  return;

 locks_init_lock(&lock);
 lock.fl_type = F_UNLCK;
 lock.fl_flags = FL_POSIX | FL_CLOSE;
 lock.fl_start = 0;
 lock.fl_end = OFFSET_MAX;
 lock.fl_owner = owner;
 lock.fl_pid = current->tgid;
 lock.fl_file = filp;
 lock.fl_ops = ((void*)0);
 lock.fl_lmops = ((void*)0);

 error = vfs_lock_file(filp, F_SETLK, &lock, ((void*)0));

 if (lock.fl_ops && lock.fl_ops->fl_release_private)
  lock.fl_ops->fl_release_private(&lock);
 trace_locks_remove_posix(inode, &lock, error);
}
