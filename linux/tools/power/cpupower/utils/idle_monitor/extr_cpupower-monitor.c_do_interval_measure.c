
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* stop ) () ;int (* start ) () ;int hw_states_num; int name; } ;


 unsigned int avail_monitors ;
 int bind_cpu (int) ;
 int cpu_count ;
 int dprint (char*,int ,int ) ;
 TYPE_1__** monitors ;
 int sleep (int) ;
 int stub1 () ;
 int stub2 () ;
 scalar_t__ wake_cpus ;

int do_interval_measure(int i)
{
 unsigned int num;
 int cpu;

 if (wake_cpus)
  for (cpu = 0; cpu < cpu_count; cpu++)
   bind_cpu(cpu);

 for (num = 0; num < avail_monitors; num++) {
  dprint("HW C-state residency monitor: %s - States: %d\n",
         monitors[num]->name, monitors[num]->hw_states_num);
  monitors[num]->start();
 }

 sleep(i);

 if (wake_cpus)
  for (cpu = 0; cpu < cpu_count; cpu++)
   bind_cpu(cpu);

 for (num = 0; num < avail_monitors; num++)
  monitors[num]->stop();


 return 0;
}
