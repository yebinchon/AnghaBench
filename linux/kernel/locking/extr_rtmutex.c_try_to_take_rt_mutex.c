
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pi_lock; int * pi_blocked_on; } ;
struct rt_mutex_waiter {int dummy; } ;
struct rt_mutex {int wait_lock; } ;


 int debug_rt_mutex_lock (struct rt_mutex*) ;
 int lockdep_assert_held (int *) ;
 int mark_rt_mutex_waiters (struct rt_mutex*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int rt_mutex_dequeue (struct rt_mutex*,struct rt_mutex_waiter*) ;
 int rt_mutex_enqueue_pi (struct task_struct*,struct rt_mutex_waiter*) ;
 scalar_t__ rt_mutex_has_waiters (struct rt_mutex*) ;
 scalar_t__ rt_mutex_owner (struct rt_mutex*) ;
 int rt_mutex_set_owner (struct rt_mutex*,struct task_struct*) ;
 struct rt_mutex_waiter* rt_mutex_top_waiter (struct rt_mutex*) ;
 int rt_mutex_waiter_less (int ,struct rt_mutex_waiter*) ;
 int task_to_waiter (struct task_struct*) ;

__attribute__((used)) static int try_to_take_rt_mutex(struct rt_mutex *lock, struct task_struct *task,
    struct rt_mutex_waiter *waiter)
{
 lockdep_assert_held(&lock->wait_lock);
 mark_rt_mutex_waiters(lock);




 if (rt_mutex_owner(lock))
  return 0;






 if (waiter) {




  if (waiter != rt_mutex_top_waiter(lock))
   return 0;





  rt_mutex_dequeue(lock, waiter);

 } else {
  if (rt_mutex_has_waiters(lock)) {





   if (!rt_mutex_waiter_less(task_to_waiter(task),
        rt_mutex_top_waiter(lock)))
    return 0;






  } else {






   goto takeit;
  }
 }







 raw_spin_lock(&task->pi_lock);
 task->pi_blocked_on = ((void*)0);





 if (rt_mutex_has_waiters(lock))
  rt_mutex_enqueue_pi(task, rt_mutex_top_waiter(lock));
 raw_spin_unlock(&task->pi_lock);

takeit:

 debug_rt_mutex_lock(lock);





 rt_mutex_set_owner(lock, task);

 return 1;
}
