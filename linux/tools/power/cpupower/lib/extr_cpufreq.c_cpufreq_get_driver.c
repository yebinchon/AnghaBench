
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCALING_DRIVER ;
 char* sysfs_cpufreq_get_one_string (unsigned int,int ) ;

char *cpufreq_get_driver(unsigned int cpu)
{
 return sysfs_cpufreq_get_one_string(cpu, SCALING_DRIVER);
}
