
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr; } ;
struct hdac_bus {int chip_init; TYPE_1__ posbuf; } ;


 int DPLBASE ;
 int DPUBASE ;
 int azx_int_clear (struct hdac_bus*) ;
 int azx_int_disable (struct hdac_bus*) ;
 int snd_hdac_bus_stop_cmd_io (struct hdac_bus*) ;
 int snd_hdac_chip_writel (struct hdac_bus*,int ,int ) ;

void snd_hdac_bus_stop_chip(struct hdac_bus *bus)
{
 if (!bus->chip_init)
  return;


 azx_int_disable(bus);
 azx_int_clear(bus);


 snd_hdac_bus_stop_cmd_io(bus);


 if (bus->posbuf.addr) {
  snd_hdac_chip_writel(bus, DPLBASE, 0);
  snd_hdac_chip_writel(bus, DPUBASE, 0);
 }

 bus->chip_init = 0;
}
