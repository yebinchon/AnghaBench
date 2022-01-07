
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int function; } ;
struct idle_timer {scalar_t__ done; TYPE_1__ timer; } ;
struct TYPE_5__ {scalar_t__ policy; int nr_cpus_allowed; int flags; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 int HRTIMER_MODE_REL_PINNED ;
 unsigned long NSEC_PER_USEC ;
 int PF_IDLE ;
 int PF_KTHREAD ;
 int PF_NO_SETAFFINITY ;
 int READ_ONCE (scalar_t__) ;
 scalar_t__ SCHED_FIFO ;
 int WARN_ON_ONCE (int) ;
 int cpuidle_use_deepest_state (int) ;
 TYPE_3__* current ;
 int do_idle () ;
 int hrtimer_init_on_stack (TYPE_1__*,int ,int ) ;
 int hrtimer_start (TYPE_1__*,int ,int ) ;
 int idle_inject_timer_fn ;
 int ns_to_ktime (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int preempt_fold_need_resched () ;
 int rcu_sleep_check () ;

void play_idle(unsigned long duration_us)
{
 struct idle_timer it;





 WARN_ON_ONCE(current->policy != SCHED_FIFO);
 WARN_ON_ONCE(current->nr_cpus_allowed != 1);
 WARN_ON_ONCE(!(current->flags & PF_KTHREAD));
 WARN_ON_ONCE(!(current->flags & PF_NO_SETAFFINITY));
 WARN_ON_ONCE(!duration_us);

 rcu_sleep_check();
 preempt_disable();
 current->flags |= PF_IDLE;
 cpuidle_use_deepest_state(1);

 it.done = 0;
 hrtimer_init_on_stack(&it.timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 it.timer.function = idle_inject_timer_fn;
 hrtimer_start(&it.timer, ns_to_ktime(duration_us * NSEC_PER_USEC),
        HRTIMER_MODE_REL_PINNED);

 while (!READ_ONCE(it.done))
  do_idle();

 cpuidle_use_deepest_state(0);
 current->flags &= ~PF_IDLE;

 preempt_fold_need_resched();
 preempt_enable();
}
