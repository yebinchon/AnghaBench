
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_PREEMPTION ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ RCU_SCHEDULER_INACTIVE ;
 int might_sleep () ;
 int num_online_cpus () ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ rcu_scheduler_active ;

__attribute__((used)) static int rcu_blocking_is_gp(void)
{
 int ret;

 if (IS_ENABLED(CONFIG_PREEMPTION))
  return rcu_scheduler_active == RCU_SCHEDULER_INACTIVE;
 might_sleep();
 preempt_disable();
 ret = num_online_cpus() <= 1;
 preempt_enable();
 return ret;
}
