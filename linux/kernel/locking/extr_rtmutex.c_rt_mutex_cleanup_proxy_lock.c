
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex_waiter {int dummy; } ;
struct rt_mutex {int wait_lock; } ;


 scalar_t__ current ;
 int fixup_rt_mutex_waiters (struct rt_mutex*) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int remove_waiter (struct rt_mutex*,struct rt_mutex_waiter*) ;
 scalar_t__ rt_mutex_owner (struct rt_mutex*) ;
 int try_to_take_rt_mutex (struct rt_mutex*,scalar_t__,struct rt_mutex_waiter*) ;

bool rt_mutex_cleanup_proxy_lock(struct rt_mutex *lock,
     struct rt_mutex_waiter *waiter)
{
 bool cleanup = 0;

 raw_spin_lock_irq(&lock->wait_lock);
 try_to_take_rt_mutex(lock, current, waiter);




 if (rt_mutex_owner(lock) != current) {
  remove_waiter(lock, waiter);
  cleanup = 1;
 }




 fixup_rt_mutex_waiters(lock);

 raw_spin_unlock_irq(&lock->wait_lock);

 return cleanup;
}
