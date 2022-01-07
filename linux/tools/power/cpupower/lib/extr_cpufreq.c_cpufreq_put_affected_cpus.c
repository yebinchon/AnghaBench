
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_affected_cpus {struct cpufreq_affected_cpus* next; struct cpufreq_affected_cpus* first; } ;


 int free (struct cpufreq_affected_cpus*) ;

void cpufreq_put_affected_cpus(struct cpufreq_affected_cpus *any)
{
 struct cpufreq_affected_cpus *tmp, *next;

 if (!any)
  return;

 tmp = any->first;
 while (tmp) {
  next = tmp->next;
  free(tmp);
  tmp = next;
 }
}
