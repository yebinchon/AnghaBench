
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int rcu_preempt_deferred_qs (int ) ;
 int rcu_qs () ;

void rcu_softirq_qs(void)
{
 rcu_qs();
 rcu_preempt_deferred_qs(current);
}
