
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpufreq_modify_policy_governor (unsigned int,char*) ;
 int cpupower_is_cpu_online (unsigned int) ;
 int dprintf (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int perror (char*) ;
 int stderr ;

int set_cpufreq_governor(char *governor, unsigned int cpu)
{

 dprintf("set %s as cpufreq governor\n", governor);

 if (cpupower_is_cpu_online(cpu) != 1) {
  perror("cpufreq_cpu_exists");
  fprintf(stderr, "error: cpu %u does not exist\n", cpu);
  return -1;
 }

 if (cpufreq_modify_policy_governor(cpu, governor) != 0) {
  perror("cpufreq_modify_policy_governor");
  fprintf(stderr, "error: unable to set %s governor\n", governor);
  return -1;
 }

 return 0;
}
