
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
typedef int cpu_stop_fn_t ;


 int cpus_read_lock () ;
 int cpus_read_unlock () ;
 int stop_machine_cpuslocked (int ,void*,struct cpumask const*) ;

int stop_machine(cpu_stop_fn_t fn, void *data, const struct cpumask *cpus)
{
 int ret;


 cpus_read_lock();
 ret = stop_machine_cpuslocked(fn, data, cpus);
 cpus_read_unlock();
 return ret;
}
