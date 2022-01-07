
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_affected_cpus {struct cpufreq_affected_cpus* next; int cpu; struct cpufreq_affected_cpus* first; } ;
typedef int linebuf ;


 int MAX_LINE_LEN ;
 int SYSFS_PATH_MAX ;
 int free (struct cpufreq_affected_cpus*) ;
 void* malloc (int) ;
 int memcpy (char*,char*,unsigned int) ;
 int sscanf (char*,char*,int *) ;
 unsigned int sysfs_cpufreq_read_file (unsigned int,char const*,char*,int) ;

__attribute__((used)) static struct cpufreq_affected_cpus *sysfs_get_cpu_list(unsigned int cpu,
       const char *file)
{
 struct cpufreq_affected_cpus *first = ((void*)0);
 struct cpufreq_affected_cpus *current = ((void*)0);
 char one_value[SYSFS_PATH_MAX];
 char linebuf[MAX_LINE_LEN];
 unsigned int pos, i;
 unsigned int len;

 len = sysfs_cpufreq_read_file(cpu, file, linebuf, sizeof(linebuf));
 if (len == 0)
  return ((void*)0);

 pos = 0;
 for (i = 0; i < len; i++) {
  if (i == len || linebuf[i] == ' ' || linebuf[i] == '\n') {
   if (i - pos < 1)
    continue;
   if (i - pos >= SYSFS_PATH_MAX)
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

   if (sscanf(one_value, "%u", &current->cpu) != 1)
    goto error_out;

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
