
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_affected_cpus {int dummy; } ;


 struct cpufreq_affected_cpus* sysfs_get_cpu_list (unsigned int,char*) ;

struct cpufreq_affected_cpus *cpufreq_get_affected_cpus(unsigned int cpu)
{
 return sysfs_get_cpu_list(cpu, "affected_cpus");
}
