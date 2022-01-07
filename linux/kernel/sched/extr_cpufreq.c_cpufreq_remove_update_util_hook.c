
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpufreq_update_util_data ;
 int per_cpu (int ,int) ;
 int rcu_assign_pointer (int ,int *) ;

void cpufreq_remove_update_util_hook(int cpu)
{
 rcu_assign_pointer(per_cpu(cpufreq_update_util_data, cpu), ((void*)0));
}
