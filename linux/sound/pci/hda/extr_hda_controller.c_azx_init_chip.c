
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx {int driver_caps; } ;


 int AZX_DCAPS_CTX_WORKAROUND ;
 int RINTCNT ;
 int azx_bus (struct azx*) ;
 int azx_writew (struct azx*,int ,int) ;
 scalar_t__ snd_hdac_bus_init_chip (int ,int) ;

void azx_init_chip(struct azx *chip, bool full_reset)
{
 if (snd_hdac_bus_init_chip(azx_bus(chip), full_reset)) {

  if (chip->driver_caps & AZX_DCAPS_CTX_WORKAROUND)
   azx_writew(chip, RINTCNT, 0xc0);
 }
}
