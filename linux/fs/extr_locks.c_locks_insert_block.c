
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int __locks_insert_block (struct file_lock*,struct file_lock*,int (*) (struct file_lock*,struct file_lock*)) ;
 int blocked_lock_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void locks_insert_block(struct file_lock *blocker,
          struct file_lock *waiter,
          bool conflict(struct file_lock *,
          struct file_lock *))
{
 spin_lock(&blocked_lock_lock);
 __locks_insert_block(blocker, waiter, conflict);
 spin_unlock(&blocked_lock_lock);
}
