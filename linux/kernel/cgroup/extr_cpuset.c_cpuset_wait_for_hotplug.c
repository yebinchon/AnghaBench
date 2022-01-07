
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpuset_hotplug_work ;
 int flush_work (int *) ;

void cpuset_wait_for_hotplug(void)
{
 flush_work(&cpuset_hotplug_work);
}
