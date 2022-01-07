
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_RCU_TORTURE_TEST ;
 int IS_BUILTIN (int ) ;
 int old_rt_runtime ;
 int sysctl_sched_rt_runtime ;

__attribute__((used)) static void rcu_torture_enable_rt_throttle(void)
{
 if (!IS_BUILTIN(CONFIG_RCU_TORTURE_TEST) || old_rt_runtime == -1)
  return;

 sysctl_sched_rt_runtime = old_rt_runtime;
 old_rt_runtime = -1;
}
