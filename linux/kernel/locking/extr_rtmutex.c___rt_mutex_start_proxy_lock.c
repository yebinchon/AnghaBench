
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rt_mutex_waiter {int dummy; } ;
struct rt_mutex {int wait_lock; } ;


 int RT_MUTEX_FULL_CHAINWALK ;
 int debug_rt_mutex_print_deadlock (struct rt_mutex_waiter*) ;
 int lockdep_assert_held (int *) ;
 int rt_mutex_owner (struct rt_mutex*) ;
 int task_blocks_on_rt_mutex (struct rt_mutex*,struct rt_mutex_waiter*,struct task_struct*,int ) ;
 scalar_t__ try_to_take_rt_mutex (struct rt_mutex*,struct task_struct*,int *) ;

int __rt_mutex_start_proxy_lock(struct rt_mutex *lock,
         struct rt_mutex_waiter *waiter,
         struct task_struct *task)
{
 int ret;

 lockdep_assert_held(&lock->wait_lock);

 if (try_to_take_rt_mutex(lock, task, ((void*)0)))
  return 1;


 ret = task_blocks_on_rt_mutex(lock, waiter, task,
          RT_MUTEX_FULL_CHAINWALK);

 if (ret && !rt_mutex_owner(lock)) {






  ret = 0;
 }

 debug_rt_mutex_print_deadlock(waiter);

 return ret;
}
