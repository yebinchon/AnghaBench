
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU_SOFTIRQ ;
 int cpu_online (int ) ;
 int invoke_rcu_core_kthread () ;
 int raise_softirq (int ) ;
 int smp_processor_id () ;
 scalar_t__ use_softirq ;

__attribute__((used)) static void invoke_rcu_core(void)
{
 if (!cpu_online(smp_processor_id()))
  return;
 if (use_softirq)
  raise_softirq(RCU_SOFTIRQ);
 else
  invoke_rcu_core_kthread();
}
