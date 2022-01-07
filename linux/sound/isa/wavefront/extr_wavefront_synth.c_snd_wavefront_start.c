
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int has_fx; int control_port; scalar_t__ israw; } ;
typedef TYPE_1__ snd_wavefront_t ;


 scalar_t__ fx_raw ;
 int outb (int,int ) ;
 scalar_t__ snd_wavefront_fx_detect (TYPE_1__*) ;
 int snd_wavefront_fx_start (TYPE_1__*) ;
 scalar_t__ wavefront_do_reset (TYPE_1__*) ;
 int wavefront_get_patch_status (TYPE_1__*) ;
 int wavefront_get_program_status (TYPE_1__*) ;
 int wavefront_get_sample_status (TYPE_1__*,int) ;

int
snd_wavefront_start (snd_wavefront_t *dev)

{
 int samples_are_from_rom;





 if (dev->israw) {
  samples_are_from_rom = 1;
 } else {

  samples_are_from_rom = 0;
 }

 if (dev->israw || fx_raw) {
  if (wavefront_do_reset (dev)) {
   return -1;
  }
 }


 dev->has_fx = (snd_wavefront_fx_detect (dev) == 0);

 if (dev->has_fx && fx_raw) {
  snd_wavefront_fx_start (dev);
 }

 wavefront_get_sample_status (dev, samples_are_from_rom);
 wavefront_get_program_status (dev);
 wavefront_get_patch_status (dev);




 outb (0x80|0x40|0x20, dev->control_port);

 return (0);
}
