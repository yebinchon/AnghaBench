
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int deadline; } ;
struct task_struct {int pi_lock; struct rt_mutex_waiter* pi_blocked_on; TYPE_1__ dl; int prio; } ;
struct rt_mutex_waiter {int deadline; int prio; struct rt_mutex* lock; struct task_struct* task; } ;
struct rt_mutex {int wait_lock; } ;
typedef enum rtmutex_chainwalk { ____Placeholder_rtmutex_chainwalk } rtmutex_chainwalk ;


 int EDEADLK ;
 int get_task_struct (struct task_struct*) ;
 int lockdep_assert_held (int *) ;
 int raw_spin_lock (int *) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int rt_mutex_adjust_prio (struct task_struct*) ;
 int rt_mutex_adjust_prio_chain (struct task_struct*,int,struct rt_mutex*,struct rt_mutex*,struct rt_mutex_waiter*,struct task_struct*) ;
 scalar_t__ rt_mutex_cond_detect_deadlock (struct rt_mutex_waiter*,int) ;
 int rt_mutex_dequeue_pi (struct task_struct*,struct rt_mutex_waiter*) ;
 int rt_mutex_enqueue (struct rt_mutex*,struct rt_mutex_waiter*) ;
 int rt_mutex_enqueue_pi (struct task_struct*,struct rt_mutex_waiter*) ;
 scalar_t__ rt_mutex_has_waiters (struct rt_mutex*) ;
 struct task_struct* rt_mutex_owner (struct rt_mutex*) ;
 struct rt_mutex_waiter* rt_mutex_top_waiter (struct rt_mutex*) ;
 struct rt_mutex* task_blocked_on_lock (struct task_struct*) ;

__attribute__((used)) static int task_blocks_on_rt_mutex(struct rt_mutex *lock,
       struct rt_mutex_waiter *waiter,
       struct task_struct *task,
       enum rtmutex_chainwalk chwalk)
{
 struct task_struct *owner = rt_mutex_owner(lock);
 struct rt_mutex_waiter *top_waiter = waiter;
 struct rt_mutex *next_lock;
 int chain_walk = 0, res;

 lockdep_assert_held(&lock->wait_lock);
 if (owner == task)
  return -EDEADLK;

 raw_spin_lock(&task->pi_lock);
 waiter->task = task;
 waiter->lock = lock;
 waiter->prio = task->prio;
 waiter->deadline = task->dl.deadline;


 if (rt_mutex_has_waiters(lock))
  top_waiter = rt_mutex_top_waiter(lock);
 rt_mutex_enqueue(lock, waiter);

 task->pi_blocked_on = waiter;

 raw_spin_unlock(&task->pi_lock);

 if (!owner)
  return 0;

 raw_spin_lock(&owner->pi_lock);
 if (waiter == rt_mutex_top_waiter(lock)) {
  rt_mutex_dequeue_pi(owner, top_waiter);
  rt_mutex_enqueue_pi(owner, waiter);

  rt_mutex_adjust_prio(owner);
  if (owner->pi_blocked_on)
   chain_walk = 1;
 } else if (rt_mutex_cond_detect_deadlock(waiter, chwalk)) {
  chain_walk = 1;
 }


 next_lock = task_blocked_on_lock(owner);

 raw_spin_unlock(&owner->pi_lock);





 if (!chain_walk || !next_lock)
  return 0;






 get_task_struct(owner);

 raw_spin_unlock_irq(&lock->wait_lock);

 res = rt_mutex_adjust_prio_chain(owner, chwalk, lock,
      next_lock, waiter, task);

 raw_spin_lock_irq(&lock->wait_lock);

 return res;
}
