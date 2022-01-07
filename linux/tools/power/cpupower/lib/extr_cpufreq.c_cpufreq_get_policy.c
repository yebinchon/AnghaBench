
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {struct cpufreq_policy* governor; void* max; void* min; } ;


 int SCALING_GOVERNOR ;
 int SCALING_MAX_FREQ ;
 int SCALING_MIN_FREQ ;
 int free (struct cpufreq_policy*) ;
 struct cpufreq_policy* malloc (int) ;
 struct cpufreq_policy* sysfs_cpufreq_get_one_string (unsigned int,int ) ;
 void* sysfs_cpufreq_get_one_value (unsigned int,int ) ;

struct cpufreq_policy *cpufreq_get_policy(unsigned int cpu)
{
 struct cpufreq_policy *policy;

 policy = malloc(sizeof(struct cpufreq_policy));
 if (!policy)
  return ((void*)0);

 policy->governor = sysfs_cpufreq_get_one_string(cpu, SCALING_GOVERNOR);
 if (!policy->governor) {
  free(policy);
  return ((void*)0);
 }
 policy->min = sysfs_cpufreq_get_one_value(cpu, SCALING_MIN_FREQ);
 policy->max = sysfs_cpufreq_get_one_value(cpu, SCALING_MAX_FREQ);
 if ((!policy->min) || (!policy->max)) {
  free(policy->governor);
  free(policy);
  return ((void*)0);
 }

 return policy;
}
