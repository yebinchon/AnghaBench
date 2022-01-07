
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_link; } ;


 int blocked_hash ;
 int blocked_lock_lock ;
 int hash_add (int ,int *,int ) ;
 int lockdep_assert_held (int *) ;
 int posix_owner_key (struct file_lock*) ;

__attribute__((used)) static void locks_insert_global_blocked(struct file_lock *waiter)
{
 lockdep_assert_held(&blocked_lock_lock);

 hash_add(blocked_hash, &waiter->fl_link, posix_owner_key(waiter));
}
