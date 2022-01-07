
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entry ;


 int PATH_MAX ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ sysfs__read_int (char*,int*) ;
 int sysfs__read_ull (char*,unsigned long long*) ;

int cpu__get_max_freq(unsigned long long *freq)
{
 char entry[PATH_MAX];
 int cpu;

 if (sysfs__read_int("devices/system/cpu/online", &cpu) < 0)
  return -1;

 snprintf(entry, sizeof(entry),
   "devices/system/cpu/cpu%d/cpufreq/cpuinfo_max_freq", cpu);

 return sysfs__read_ull(entry, freq);
}
