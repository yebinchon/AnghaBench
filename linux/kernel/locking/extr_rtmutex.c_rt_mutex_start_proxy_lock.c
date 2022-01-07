
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rt_mutex_waiter {int dummy; } ;
struct rt_mutex {int wait_lock; } ;


 int __rt_mutex_start_proxy_lock (struct rt_mutex*,struct rt_mutex_waiter*,struct task_struct*) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int remove_waiter (struct rt_mutex*,struct rt_mutex_waiter*) ;
 scalar_t__ unlikely (int) ;

int rt_mutex_start_proxy_lock(struct rt_mutex *lock,
         struct rt_mutex_waiter *waiter,
         struct task_struct *task)
{
 int ret;

 raw_spin_lock_irq(&lock->wait_lock);
 ret = __rt_mutex_start_proxy_lock(lock, waiter, task);
 if (unlikely(ret))
  remove_waiter(lock, waiter);
 raw_spin_unlock_irq(&lock->wait_lock);

 return ret;
}
