
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_stats {unsigned long long time_in_state; struct cpufreq_stats* next; int frequency; struct cpufreq_stats* first; } ;
typedef int linebuf ;


 int MAX_LINE_LEN ;
 int SYSFS_PATH_MAX ;
 int free (struct cpufreq_stats*) ;
 void* malloc (int) ;
 int memcpy (char*,char*,unsigned int) ;
 int sscanf (char*,char*,int *,unsigned long long*) ;
 unsigned int strlen (char*) ;
 unsigned int sysfs_cpufreq_read_file (unsigned int,char*,char*,int) ;

struct cpufreq_stats *cpufreq_get_stats(unsigned int cpu,
     unsigned long long *total_time)
{
 struct cpufreq_stats *first = ((void*)0);
 struct cpufreq_stats *current = ((void*)0);
 char one_value[SYSFS_PATH_MAX];
 char linebuf[MAX_LINE_LEN];
 unsigned int pos, i;
 unsigned int len;

 len = sysfs_cpufreq_read_file(cpu, "stats/time_in_state",
    linebuf, sizeof(linebuf));
 if (len == 0)
  return ((void*)0);

 *total_time = 0;
 pos = 0;
 for (i = 0; i < len; i++) {
  if (i == strlen(linebuf) || linebuf[i] == '\n') {
   if (i - pos < 2)
    continue;
   if ((i - pos) >= SYSFS_PATH_MAX)
    goto error_out;
   if (current) {
    current->next = malloc(sizeof(*current));
    if (!current->next)
     goto error_out;
    current = current->next;
   } else {
    first = malloc(sizeof(*first));
    if (!first)
     goto error_out;
    current = first;
   }
   current->first = first;
   current->next = ((void*)0);

   memcpy(one_value, linebuf + pos, i - pos);
   one_value[i - pos] = '\0';
   if (sscanf(one_value, "%lu %llu",
     &current->frequency,
     &current->time_in_state) != 2)
    goto error_out;

   *total_time = *total_time + current->time_in_state;
   pos = i + 1;
  }
 }

 return first;

 error_out:
 while (first) {
  current = first->next;
  free(first);
  first = current;
 }
 return ((void*)0);
}
