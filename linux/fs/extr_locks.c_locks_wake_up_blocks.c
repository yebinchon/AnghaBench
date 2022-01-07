
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_blocked_requests; } ;


 int __locks_wake_up_blocks (struct file_lock*) ;
 int blocked_lock_lock ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void locks_wake_up_blocks(struct file_lock *blocker)
{







 if (list_empty(&blocker->fl_blocked_requests))
  return;

 spin_lock(&blocked_lock_lock);
 __locks_wake_up_blocks(blocker);
 spin_unlock(&blocked_lock_lock);
}
