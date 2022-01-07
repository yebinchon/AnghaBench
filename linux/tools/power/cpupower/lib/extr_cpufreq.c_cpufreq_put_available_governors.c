
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_available_governors {struct cpufreq_available_governors* governor; struct cpufreq_available_governors* next; struct cpufreq_available_governors* first; } ;


 int free (struct cpufreq_available_governors*) ;

void cpufreq_put_available_governors(struct cpufreq_available_governors *any)
{
 struct cpufreq_available_governors *tmp, *next;

 if (!any)
  return;

 tmp = any->first;
 while (tmp) {
  next = tmp->next;
  if (tmp->governor)
   free(tmp->governor);
  free(tmp);
  tmp = next;
 }
}
