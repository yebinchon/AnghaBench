
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuset_hotplug_work ;
 int schedule_work (int *) ;

void cpuset_update_active_cpus(void)
{





 schedule_work(&cpuset_hotplug_work);
}
