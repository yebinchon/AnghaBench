
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx {int dummy; } ;


 int azx_bus (struct azx*) ;
 int snd_hdac_bus_stop_chip (int ) ;

void azx_stop_chip(struct azx *chip)
{
 snd_hdac_bus_stop_chip(azx_bus(chip));
}
