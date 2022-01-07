
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCALING_CUR_FREQ ;
 unsigned long sysfs_cpufreq_get_one_value (unsigned int,int ) ;

unsigned long cpufreq_get_freq_kernel(unsigned int cpu)
{
 return sysfs_cpufreq_get_one_value(cpu, SCALING_CUR_FREQ);
}
