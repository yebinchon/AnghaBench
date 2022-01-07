
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_affected_cpus {int dummy; } ;


 int cpufreq_put_affected_cpus (struct cpufreq_affected_cpus*) ;

void cpufreq_put_related_cpus(struct cpufreq_affected_cpus *any)
{
 cpufreq_put_affected_cpus(any);
}
