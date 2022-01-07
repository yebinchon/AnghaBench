
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int SYSFS_PATH_MAX ;
 int WRITE_SCALING_GOVERNOR ;
 int strlen (char*) ;
 int sysfs_cpufreq_write_one_value (unsigned int,int ,char*,int) ;
 scalar_t__ verify_gov (char*,char*) ;

int cpufreq_modify_policy_governor(unsigned int cpu, char *governor)
{
 char new_gov[SYSFS_PATH_MAX];

 if ((!governor) || (strlen(governor) > 19))
  return -EINVAL;

 if (verify_gov(new_gov, governor))
  return -EINVAL;

 return sysfs_cpufreq_write_one_value(cpu, WRITE_SCALING_GOVERNOR,
          new_gov, strlen(new_gov));
}
