
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linebuf ;
typedef enum cpufreq_string { ____Placeholder_cpufreq_string } cpufreq_string ;


 int MAX_CPUFREQ_STRING_FILES ;
 int MAX_LINE_LEN ;
 int * cpufreq_string_files ;
 char* strdup (char*) ;
 int strlen (char*) ;
 unsigned int sysfs_cpufreq_read_file (unsigned int,int ,char*,int) ;

__attribute__((used)) static char *sysfs_cpufreq_get_one_string(unsigned int cpu,
        enum cpufreq_string which)
{
 char linebuf[MAX_LINE_LEN];
 char *result;
 unsigned int len;

 if (which >= MAX_CPUFREQ_STRING_FILES)
  return ((void*)0);

 len = sysfs_cpufreq_read_file(cpu, cpufreq_string_files[which],
    linebuf, sizeof(linebuf));
 if (len == 0)
  return ((void*)0);

 result = strdup(linebuf);
 if (result == ((void*)0))
  return ((void*)0);

 if (result[strlen(result) - 1] == '\n')
  result[strlen(result) - 1] = '\0';

 return result;
}
