
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int governor; int max; int min; } ;


 int cpufreq_modify_policy_governor (unsigned int,int ) ;
 int cpufreq_modify_policy_max (unsigned int,int ) ;
 int cpufreq_modify_policy_min (unsigned int,int ) ;
 int cpufreq_set_frequency (unsigned int,unsigned long) ;
 int do_new_policy (unsigned int,struct cpufreq_policy*) ;

__attribute__((used)) static int do_one_cpu(unsigned int cpu, struct cpufreq_policy *new_pol,
  unsigned long freq, unsigned int pc)
{
 switch (pc) {
 case 0:
  return cpufreq_set_frequency(cpu, freq);

 case 1:



  if (new_pol->min)
   return cpufreq_modify_policy_min(cpu, new_pol->min);
  else if (new_pol->max)
   return cpufreq_modify_policy_max(cpu, new_pol->max);
  else if (new_pol->governor)
   return cpufreq_modify_policy_governor(cpu,
       new_pol->governor);

 default:

  return do_new_policy(cpu, new_pol);
 }
}
