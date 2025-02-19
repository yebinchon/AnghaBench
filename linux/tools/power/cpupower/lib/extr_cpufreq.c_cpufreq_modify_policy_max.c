
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSFS_PATH_MAX ;
 int WRITE_SCALING_MAX_FREQ ;
 int snprintf (char*,int,char*,unsigned long) ;
 int strlen (char*) ;
 int sysfs_cpufreq_write_one_value (unsigned int,int ,char*,int ) ;

int cpufreq_modify_policy_max(unsigned int cpu, unsigned long max_freq)
{
 char value[SYSFS_PATH_MAX];

 snprintf(value, SYSFS_PATH_MAX, "%lu", max_freq);

 return sysfs_cpufreq_write_one_value(cpu, WRITE_SCALING_MAX_FREQ,
          value, strlen(value));
}
