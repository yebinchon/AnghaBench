
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUINFO_LATENCY ;
 unsigned long sysfs_cpufreq_get_one_value (unsigned int,int ) ;

unsigned long cpufreq_get_transition_latency(unsigned int cpu)
{
 return sysfs_cpufreq_get_one_value(cpu, CPUINFO_LATENCY);
}
