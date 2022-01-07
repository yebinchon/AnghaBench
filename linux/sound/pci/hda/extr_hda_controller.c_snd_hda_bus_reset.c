
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chip_init; } ;
struct hda_bus {int in_reset; TYPE_1__ core; } ;
struct azx {int dummy; } ;


 int azx_init_chip (struct azx*,int) ;
 int azx_stop_chip (struct azx*) ;
 struct azx* bus_to_azx (TYPE_1__*) ;
 int snd_hda_bus_reset_codecs (struct hda_bus*) ;

void snd_hda_bus_reset(struct hda_bus *bus)
{
 struct azx *chip = bus_to_azx(&bus->core);

 bus->in_reset = 1;
 azx_stop_chip(chip);
 azx_init_chip(chip, 1);
 if (bus->core.chip_init)
  snd_hda_bus_reset_codecs(bus);
 bus->in_reset = 0;
}
