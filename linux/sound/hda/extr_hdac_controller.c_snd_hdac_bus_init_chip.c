
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ addr; } ;
struct hdac_bus {int chip_init; TYPE_1__ posbuf; scalar_t__ use_posbuf; } ;


 int DPLBASE ;
 int DPUBASE ;
 int azx_int_clear (struct hdac_bus*) ;
 int azx_int_enable (struct hdac_bus*) ;
 int snd_hdac_bus_init_cmd_io (struct hdac_bus*) ;
 int snd_hdac_bus_reset_link (struct hdac_bus*,int) ;
 int snd_hdac_chip_writel (struct hdac_bus*,int ,int ) ;
 int upper_32_bits (scalar_t__) ;

bool snd_hdac_bus_init_chip(struct hdac_bus *bus, bool full_reset)
{
 if (bus->chip_init)
  return 0;


 snd_hdac_bus_reset_link(bus, full_reset);


 azx_int_clear(bus);


 snd_hdac_bus_init_cmd_io(bus);


 azx_int_enable(bus);


 if (bus->use_posbuf && bus->posbuf.addr) {
  snd_hdac_chip_writel(bus, DPLBASE, (u32)bus->posbuf.addr);
  snd_hdac_chip_writel(bus, DPUBASE, upper_32_bits(bus->posbuf.addr));
 }

 bus->chip_init = 1;
 return 1;
}
