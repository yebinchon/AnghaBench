
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gp_kthread; int gp_wq; int gp_seq; int gp_wake_seq; int gp_wake_time; int gp_flags; } ;


 int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int ) ;
 scalar_t__ current ;
 int in_irq () ;
 int in_serving_softirq () ;
 int jiffies ;
 TYPE_1__ rcu_state ;
 int swake_up_one (int *) ;

__attribute__((used)) static void rcu_gp_kthread_wake(void)
{
 if ((current == rcu_state.gp_kthread &&
      !in_irq() && !in_serving_softirq()) ||
     !READ_ONCE(rcu_state.gp_flags) ||
     !rcu_state.gp_kthread)
  return;
 WRITE_ONCE(rcu_state.gp_wake_time, jiffies);
 WRITE_ONCE(rcu_state.gp_wake_seq, READ_ONCE(rcu_state.gp_seq));
 swake_up_one(&rcu_state.gp_wq);
}
