
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequencies {struct cpufreq_frequencies* next; struct cpufreq_frequencies* first; } ;


 int free (struct cpufreq_frequencies*) ;

void cpufreq_put_frequencies(struct cpufreq_frequencies *any)
{
 struct cpufreq_frequencies *tmp, *next;

 if (!any)
  return;

 tmp = any->first;
 while (tmp) {
  next = tmp->next;
  free(tmp);
  tmp = next;
 }
}
