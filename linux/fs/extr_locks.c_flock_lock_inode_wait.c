
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file_lock {int fl_blocker; int fl_wait; } ;


 int FILE_LOCK_DEFERRED ;
 int flock_lock_inode (struct inode*,struct file_lock*) ;
 int locks_delete_block (struct file_lock*) ;
 int might_sleep () ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int flock_lock_inode_wait(struct inode *inode, struct file_lock *fl)
{
 int error;
 might_sleep();
 for (;;) {
  error = flock_lock_inode(inode, fl);
  if (error != FILE_LOCK_DEFERRED)
   break;
  error = wait_event_interruptible(fl->fl_wait, !fl->fl_blocker);
  if (error)
   break;
 }
 locks_delete_block(fl);
 return error;
}
