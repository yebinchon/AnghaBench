
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_link; } ;


 int blocked_lock_lock ;
 int hash_del (int *) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void locks_delete_global_blocked(struct file_lock *waiter)
{
 lockdep_assert_held(&blocked_lock_lock);

 hash_del(&waiter->fl_link);
}
