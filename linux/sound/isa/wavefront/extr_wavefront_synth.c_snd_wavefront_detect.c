
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int israw; int rom_samples_rdonly; unsigned char* fw_version; unsigned char* hw_version; scalar_t__ irq_cnt; scalar_t__ interrupts_are_midi; int debug; scalar_t__ has_fx; } ;
typedef TYPE_1__ snd_wavefront_t ;
struct TYPE_6__ {TYPE_1__ wavefront; } ;
typedef TYPE_2__ snd_wavefront_card_t ;


 int WFC_FIRMWARE_VERSION ;
 int WFC_HARDWARE_VERSION ;
 int debug_default ;
 int snd_printk (char*,...) ;
 scalar_t__ snd_wavefront_cmd (TYPE_1__*,int ,unsigned char*,unsigned char*) ;
 int wf_raw ;

int
snd_wavefront_detect (snd_wavefront_card_t *card)

{
 unsigned char rbuf[4], wbuf[4];
 snd_wavefront_t *dev = &card->wavefront;





 dev->israw = 0;
 dev->has_fx = 0;
 dev->debug = debug_default;
 dev->interrupts_are_midi = 0;
 dev->irq_cnt = 0;
 dev->rom_samples_rdonly = 1;

 if (snd_wavefront_cmd (dev, WFC_FIRMWARE_VERSION, rbuf, wbuf) == 0) {

  dev->fw_version[0] = rbuf[0];
  dev->fw_version[1] = rbuf[1];

  snd_printk ("firmware %d.%d already loaded.\n",
       rbuf[0], rbuf[1]);



  if (snd_wavefront_cmd (dev, WFC_HARDWARE_VERSION,
           rbuf, wbuf) == 0) {
   dev->hw_version[0] = rbuf[0];
   dev->hw_version[1] = rbuf[1];
  } else {
   snd_printk ("not raw, but no "
        "hardware version!\n");
   return -1;
  }

  if (!wf_raw) {
   return 0;
  } else {
   snd_printk ("reloading firmware as you requested.\n");
   dev->israw = 1;
  }

 } else {

  dev->israw = 1;
  snd_printk ("no response to firmware probe, assume raw.\n");

 }

 return 0;
}
