
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {int env; } ;


 int perf_env__nr_cpus_avail (int ) ;

int machine__nr_cpus_avail(struct machine *machine)
{
 return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
}
