
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpus_read_lock () ;
 int mem_hotplug_lock ;
 int percpu_down_write (int *) ;

void mem_hotplug_begin(void)
{
 cpus_read_lock();
 percpu_down_write(&mem_hotplug_lock);
}
