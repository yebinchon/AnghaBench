
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int governor; } ;


 int ENODEV ;
 int SYSFS_PATH_MAX ;
 int WRITE_SCALING_SET_SPEED ;
 struct cpufreq_policy* cpufreq_get_policy (unsigned int) ;
 int cpufreq_modify_policy_governor (unsigned int,char*) ;
 int cpufreq_put_policy (struct cpufreq_policy*) ;
 int snprintf (char*,int,char*,unsigned long) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int sysfs_cpufreq_write_one_value (unsigned int,int ,char*,int ) ;

int cpufreq_set_frequency(unsigned int cpu, unsigned long target_frequency)
{
 struct cpufreq_policy *pol = cpufreq_get_policy(cpu);
 char userspace_gov[] = "userspace";
 char freq[SYSFS_PATH_MAX];
 int ret;

 if (!pol)
  return -ENODEV;

 if (strncmp(pol->governor, userspace_gov, 9) != 0) {
  ret = cpufreq_modify_policy_governor(cpu, userspace_gov);
  if (ret) {
   cpufreq_put_policy(pol);
   return ret;
  }
 }

 cpufreq_put_policy(pol);

 snprintf(freq, SYSFS_PATH_MAX, "%lu", target_frequency);

 return sysfs_cpufreq_write_one_value(cpu, WRITE_SCALING_SET_SPEED,
          freq, strlen(freq));
}
