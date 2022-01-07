
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int * fl_blocker; int fl_blocked_requests; } ;


 int ENOENT ;
 int __locks_delete_block (struct file_lock*) ;
 int __locks_wake_up_blocks (struct file_lock*) ;
 int blocked_lock_lock ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int locks_delete_block(struct file_lock *waiter)
{
 int status = -ENOENT;
 if (waiter->fl_blocker == ((void*)0) &&
     list_empty(&waiter->fl_blocked_requests))
  return status;
 spin_lock(&blocked_lock_lock);
 if (waiter->fl_blocker)
  status = 0;
 __locks_wake_up_blocks(waiter);
 __locks_delete_block(waiter);
 spin_unlock(&blocked_lock_lock);
 return status;
}
