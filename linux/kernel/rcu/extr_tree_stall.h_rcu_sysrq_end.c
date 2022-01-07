
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rcu_cpu_stall_suppress ;

void rcu_sysrq_end(void)
{
 if (rcu_cpu_stall_suppress == 2)
  rcu_cpu_stall_suppress = 0;
}
