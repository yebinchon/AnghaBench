
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUINFO_MAX_FREQ ;
 int CPUINFO_MIN_FREQ ;
 int EINVAL ;
 int ENODEV ;
 unsigned long sysfs_cpufreq_get_one_value (unsigned int,int ) ;

int cpufreq_get_hardware_limits(unsigned int cpu,
    unsigned long *min,
    unsigned long *max)
{
 if ((!min) || (!max))
  return -EINVAL;

 *min = sysfs_cpufreq_get_one_value(cpu, CPUINFO_MIN_FREQ);
 if (!*min)
  return -ENODEV;

 *max = sysfs_cpufreq_get_one_value(cpu, CPUINFO_MAX_FREQ);
 if (!*max)
  return -ENODEV;

 return 0;
}
