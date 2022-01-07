
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {char* governor; int max; int min; } ;


 int EINVAL ;
 char* _ (char*) ;
 struct cpufreq_policy* cpufreq_get_policy (unsigned int) ;
 int cpufreq_put_policy (struct cpufreq_policy*) ;
 int print_speed (int ) ;
 int printf (char*,...) ;

__attribute__((used)) static int get_policy(unsigned int cpu)
{
 struct cpufreq_policy *policy = cpufreq_get_policy(cpu);
 if (!policy) {
  printf(_("  Unable to determine current policy\n"));
  return -EINVAL;
 }
 printf(_("  current policy: frequency should be within "));
 print_speed(policy->min);
 printf(_(" and "));
 print_speed(policy->max);

 printf(".\n                  ");
 printf(_("The governor \"%s\" may decide which speed to use\n"
        "                  within this range.\n"),
        policy->governor);
 cpufreq_put_policy(policy);
 return 0;
}
