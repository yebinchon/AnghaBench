
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct machine {int* current_tid; TYPE_1__* env; } ;
typedef int pid_t ;
struct TYPE_2__ {int nr_cpus_online; } ;


 int MAX_NR_CPUS ;
 int min (int ,int ) ;

pid_t machine__get_current_tid(struct machine *machine, int cpu)
{
 int nr_cpus = min(machine->env->nr_cpus_online, MAX_NR_CPUS);

 if (cpu < 0 || cpu >= nr_cpus || !machine->current_tid)
  return -1;

 return machine->current_tid[cpu];
}
