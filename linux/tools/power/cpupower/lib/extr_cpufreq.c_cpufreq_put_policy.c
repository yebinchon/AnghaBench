
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {struct cpufreq_policy* governor; } ;


 int free (struct cpufreq_policy*) ;

void cpufreq_put_policy(struct cpufreq_policy *policy)
{
 if ((!policy) || (!policy->governor))
  return;

 free(policy->governor);
 policy->governor = ((void*)0);
 free(policy);
}
