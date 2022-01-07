
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpus_read_unlock () ;
 int mem_hotplug_lock ;
 int percpu_up_write (int *) ;

void mem_hotplug_done(void)
{
 percpu_up_write(&mem_hotplug_lock);
 cpus_read_unlock();
}
