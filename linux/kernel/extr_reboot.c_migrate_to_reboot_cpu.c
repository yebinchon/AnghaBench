
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;


 int PF_NO_SETAFFINITY ;
 int cpu_hotplug_disable () ;
 int cpu_online (int) ;
 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int cpumask_of (int) ;
 TYPE_1__* current ;
 int reboot_cpu ;
 int set_cpus_allowed_ptr (TYPE_1__*,int ) ;

void migrate_to_reboot_cpu(void)
{

 int cpu = reboot_cpu;

 cpu_hotplug_disable();


 if (!cpu_online(cpu))
  cpu = cpumask_first(cpu_online_mask);


 current->flags |= PF_NO_SETAFFINITY;


 set_cpus_allowed_ptr(current, cpumask_of(cpu));
}
