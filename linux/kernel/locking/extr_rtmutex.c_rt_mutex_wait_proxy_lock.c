
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex_waiter {int dummy; } ;
struct rt_mutex {int wait_lock; } ;
struct hrtimer_sleeper {int dummy; } ;


 int TASK_INTERRUPTIBLE ;
 int __rt_mutex_slowlock (struct rt_mutex*,int ,struct hrtimer_sleeper*,struct rt_mutex_waiter*) ;
 int fixup_rt_mutex_waiters (struct rt_mutex*) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int set_current_state (int ) ;

int rt_mutex_wait_proxy_lock(struct rt_mutex *lock,
          struct hrtimer_sleeper *to,
          struct rt_mutex_waiter *waiter)
{
 int ret;

 raw_spin_lock_irq(&lock->wait_lock);

 set_current_state(TASK_INTERRUPTIBLE);
 ret = __rt_mutex_slowlock(lock, TASK_INTERRUPTIBLE, to, waiter);




 fixup_rt_mutex_waiters(lock);
 raw_spin_unlock_irq(&lock->wait_lock);

 return ret;
}
