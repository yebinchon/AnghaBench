
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct wake_q_head {int dummy; } ;
struct rt_mutex_waiter {int task; } ;
struct rt_mutex {void* owner; } ;
struct TYPE_4__ {int pi_lock; } ;


 scalar_t__ RT_MUTEX_HAS_WAITERS ;
 TYPE_1__* current ;
 int preempt_disable () ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int rt_mutex_adjust_prio (TYPE_1__*) ;
 int rt_mutex_dequeue_pi (TYPE_1__*,struct rt_mutex_waiter*) ;
 struct rt_mutex_waiter* rt_mutex_top_waiter (struct rt_mutex*) ;
 int wake_q_add (struct wake_q_head*,int ) ;

__attribute__((used)) static void mark_wakeup_next_waiter(struct wake_q_head *wake_q,
        struct rt_mutex *lock)
{
 struct rt_mutex_waiter *waiter;

 raw_spin_lock(&current->pi_lock);

 waiter = rt_mutex_top_waiter(lock);
 rt_mutex_dequeue_pi(current, waiter);
 rt_mutex_adjust_prio(current);
 lock->owner = (void *) RT_MUTEX_HAS_WAITERS;
 preempt_disable();
 wake_q_add(wake_q, waiter->task);
 raw_spin_unlock(&current->pi_lock);
}
