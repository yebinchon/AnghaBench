
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int pi_lock; } ;
struct rt_mutex_waiter {int dummy; } ;
struct rt_mutex {int wait_lock; } ;
struct TYPE_3__ {int pi_lock; int * pi_blocked_on; } ;


 int RT_MUTEX_MIN_CHAINWALK ;
 TYPE_1__* current ;
 int get_task_struct (struct task_struct*) ;
 int lockdep_assert_held (int *) ;
 int raw_spin_lock (int *) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int rt_mutex_adjust_prio (struct task_struct*) ;
 int rt_mutex_adjust_prio_chain (struct task_struct*,int ,struct rt_mutex*,struct rt_mutex*,int *,TYPE_1__*) ;
 int rt_mutex_dequeue (struct rt_mutex*,struct rt_mutex_waiter*) ;
 int rt_mutex_dequeue_pi (struct task_struct*,struct rt_mutex_waiter*) ;
 int rt_mutex_enqueue_pi (struct task_struct*,struct rt_mutex_waiter*) ;
 scalar_t__ rt_mutex_has_waiters (struct rt_mutex*) ;
 struct task_struct* rt_mutex_owner (struct rt_mutex*) ;
 struct rt_mutex_waiter* rt_mutex_top_waiter (struct rt_mutex*) ;
 struct rt_mutex* task_blocked_on_lock (struct task_struct*) ;

__attribute__((used)) static void remove_waiter(struct rt_mutex *lock,
     struct rt_mutex_waiter *waiter)
{
 bool is_top_waiter = (waiter == rt_mutex_top_waiter(lock));
 struct task_struct *owner = rt_mutex_owner(lock);
 struct rt_mutex *next_lock;

 lockdep_assert_held(&lock->wait_lock);

 raw_spin_lock(&current->pi_lock);
 rt_mutex_dequeue(lock, waiter);
 current->pi_blocked_on = ((void*)0);
 raw_spin_unlock(&current->pi_lock);





 if (!owner || !is_top_waiter)
  return;

 raw_spin_lock(&owner->pi_lock);

 rt_mutex_dequeue_pi(owner, waiter);

 if (rt_mutex_has_waiters(lock))
  rt_mutex_enqueue_pi(owner, rt_mutex_top_waiter(lock));

 rt_mutex_adjust_prio(owner);


 next_lock = task_blocked_on_lock(owner);

 raw_spin_unlock(&owner->pi_lock);





 if (!next_lock)
  return;


 get_task_struct(owner);

 raw_spin_unlock_irq(&lock->wait_lock);

 rt_mutex_adjust_prio_chain(owner, RT_MUTEX_MIN_CHAINWALK, lock,
       next_lock, ((void*)0), current);

 raw_spin_lock_irq(&lock->wait_lock);
}
