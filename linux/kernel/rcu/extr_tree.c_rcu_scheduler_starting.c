
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RCU_SCHEDULER_INIT ;
 int WARN_ON (int) ;
 scalar_t__ nr_context_switches () ;
 int num_online_cpus () ;
 int rcu_scheduler_active ;
 int rcu_test_sync_prims () ;

void rcu_scheduler_starting(void)
{
 WARN_ON(num_online_cpus() != 1);
 WARN_ON(nr_context_switches() > 0);
 rcu_test_sync_prims();
 rcu_scheduler_active = RCU_SCHEDULER_INIT;
 rcu_test_sync_prims();
}
