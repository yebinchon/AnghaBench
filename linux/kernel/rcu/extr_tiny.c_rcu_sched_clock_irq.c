
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ donetail; scalar_t__ curtail; } ;


 int current ;
 TYPE_1__ rcu_ctrlblk ;
 int rcu_qs () ;
 int set_preempt_need_resched () ;
 int set_tsk_need_resched (int ) ;

void rcu_sched_clock_irq(int user)
{
 if (user) {
  rcu_qs();
 } else if (rcu_ctrlblk.donetail != rcu_ctrlblk.curtail) {
  set_tsk_need_resched(current);
  set_preempt_need_resched();
 }
}
