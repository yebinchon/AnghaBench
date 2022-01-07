
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_stats {struct cpufreq_stats* next; struct cpufreq_stats* first; } ;


 int free (struct cpufreq_stats*) ;

void cpufreq_put_stats(struct cpufreq_stats *any)
{
 struct cpufreq_stats *tmp, *next;

 if (!any)
  return;

 tmp = any->first;
 while (tmp) {
  next = tmp->next;
  free(tmp);
  tmp = next;
 }
}
