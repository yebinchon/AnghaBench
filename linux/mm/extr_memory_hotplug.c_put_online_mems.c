
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mem_hotplug_lock ;
 int percpu_up_read (int *) ;

void put_online_mems(void)
{
 percpu_up_read(&mem_hotplug_lock);
}
