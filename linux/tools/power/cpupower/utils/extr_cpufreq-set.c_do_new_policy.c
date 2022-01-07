
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int governor; int max; int min; } ;


 int EINVAL ;
 char* _ (char*) ;
 struct cpufreq_policy* cpufreq_get_policy (unsigned int) ;
 int cpufreq_put_policy (struct cpufreq_policy*) ;
 int cpufreq_set_policy (unsigned int,struct cpufreq_policy*) ;
 int printf (char*) ;

__attribute__((used)) static int do_new_policy(unsigned int cpu, struct cpufreq_policy *new_pol)
{
 struct cpufreq_policy *cur_pol = cpufreq_get_policy(cpu);
 int ret;

 if (!cur_pol) {
  printf(_("wrong, unknown or unhandled CPU?\n"));
  return -EINVAL;
 }

 if (!new_pol->min)
  new_pol->min = cur_pol->min;

 if (!new_pol->max)
  new_pol->max = cur_pol->max;

 if (!new_pol->governor)
  new_pol->governor = cur_pol->governor;

 ret = cpufreq_set_policy(cpu, new_pol);

 cpufreq_put_policy(cur_pol);

 return ret;
}
