
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int hlink_list; } ;


 int WARN_ON (int) ;
 int list_empty (int *) ;
 int snd_hdac_bus_exit (struct hdac_bus*) ;

void snd_hdac_ext_bus_exit(struct hdac_bus *bus)
{
 snd_hdac_bus_exit(bus);
 WARN_ON(!list_empty(&bus->hlink_list));
}
