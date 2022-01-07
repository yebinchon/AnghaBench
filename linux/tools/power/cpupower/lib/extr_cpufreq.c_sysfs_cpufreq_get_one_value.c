
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linebuf ;
typedef enum cpufreq_value { ____Placeholder_cpufreq_value } cpufreq_value ;


 scalar_t__ ERANGE ;
 int MAX_CPUFREQ_VALUE_READ_FILES ;
 int MAX_LINE_LEN ;
 int * cpufreq_value_files ;
 scalar_t__ errno ;
 unsigned long strtoul (char*,char**,int ) ;
 unsigned int sysfs_cpufreq_read_file (unsigned int,int ,char*,int) ;

__attribute__((used)) static unsigned long sysfs_cpufreq_get_one_value(unsigned int cpu,
       enum cpufreq_value which)
{
 unsigned long value;
 unsigned int len;
 char linebuf[MAX_LINE_LEN];
 char *endp;

 if (which >= MAX_CPUFREQ_VALUE_READ_FILES)
  return 0;

 len = sysfs_cpufreq_read_file(cpu, cpufreq_value_files[which],
    linebuf, sizeof(linebuf));

 if (len == 0)
  return 0;

 value = strtoul(linebuf, &endp, 0);

 if (endp == linebuf || errno == ERANGE)
  return 0;

 return value;
}
