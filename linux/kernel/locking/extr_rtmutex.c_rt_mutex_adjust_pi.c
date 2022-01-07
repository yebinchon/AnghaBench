
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pi_lock; struct rt_mutex_waiter* pi_blocked_on; } ;
struct rt_mutex_waiter {struct rt_mutex* lock; } ;
struct rt_mutex {int dummy; } ;


 int RT_MUTEX_MIN_CHAINWALK ;
 int get_task_struct (struct task_struct*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int rt_mutex_adjust_prio_chain (struct task_struct*,int ,int *,struct rt_mutex*,int *,struct task_struct*) ;
 scalar_t__ rt_mutex_waiter_equal (struct rt_mutex_waiter*,int ) ;
 int task_to_waiter (struct task_struct*) ;

void rt_mutex_adjust_pi(struct task_struct *task)
{
 struct rt_mutex_waiter *waiter;
 struct rt_mutex *next_lock;
 unsigned long flags;

 raw_spin_lock_irqsave(&task->pi_lock, flags);

 waiter = task->pi_blocked_on;
 if (!waiter || rt_mutex_waiter_equal(waiter, task_to_waiter(task))) {
  raw_spin_unlock_irqrestore(&task->pi_lock, flags);
  return;
 }
 next_lock = waiter->lock;
 raw_spin_unlock_irqrestore(&task->pi_lock, flags);


 get_task_struct(task);

 rt_mutex_adjust_prio_chain(task, RT_MUTEX_MIN_CHAINWALK, ((void*)0),
       next_lock, ((void*)0), task);
}
