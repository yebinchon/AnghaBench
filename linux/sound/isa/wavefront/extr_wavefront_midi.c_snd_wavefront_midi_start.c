
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int mpu_command_port; } ;
struct TYPE_11__ {int interrupts_are_midi; TYPE_2__ midi; } ;
typedef TYPE_1__ snd_wavefront_t ;
typedef TYPE_2__ snd_wavefront_midi_t ;
struct TYPE_13__ {TYPE_1__ wavefront; } ;
typedef TYPE_3__ snd_wavefront_card_t ;


 scalar_t__ MPU_ACK ;
 int UART_MODE_ON ;
 int WFC_MISYNTH_ON ;
 int WFC_VMIDI_OFF ;
 int WFC_VMIDI_ON ;
 scalar_t__ input_avail (TYPE_2__*) ;
 int outb (int ,int ) ;
 int output_ready (TYPE_2__*) ;
 scalar_t__ read_data (TYPE_2__*) ;
 int snd_printk (char*) ;
 scalar_t__ snd_wavefront_cmd (TYPE_1__*,int ,unsigned char*,unsigned char*) ;
 int snd_wavefront_midi_disable_virtual (TYPE_3__*) ;
 int snd_wavefront_midi_enable_virtual (TYPE_3__*) ;

int
snd_wavefront_midi_start (snd_wavefront_card_t *card)

{
 int ok, i;
 unsigned char rbuf[4], wbuf[4];
 snd_wavefront_t *dev;
 snd_wavefront_midi_t *midi;

 dev = &card->wavefront;
 midi = &dev->midi;







 for (i = 0; i < 30000 && !output_ready (midi); i++);

 if (!output_ready (midi)) {
  snd_printk ("MIDI interface not ready for command\n");
  return -1;
 }





 dev->interrupts_are_midi = 1;

 outb (UART_MODE_ON, midi->mpu_command_port);

 for (ok = 0, i = 50000; i > 0 && !ok; i--) {
  if (input_avail (midi)) {
   if (read_data (midi) == MPU_ACK) {
    ok = 1;
    break;
   }
  }
 }

 if (!ok) {
  snd_printk ("cannot set UART mode for MIDI interface");
  dev->interrupts_are_midi = 0;
  return -1;
 }



 if (snd_wavefront_cmd (dev, WFC_MISYNTH_ON, rbuf, wbuf)) {
  snd_printk ("can't enable MIDI-IN-2-synth routing.\n");

 }
 if (snd_wavefront_cmd (dev, WFC_VMIDI_OFF, rbuf, wbuf)) {
  snd_printk ("virtual MIDI mode not disabled\n");
  return 0;
 }

 snd_wavefront_midi_enable_virtual (card);

 if (snd_wavefront_cmd (dev, WFC_VMIDI_ON, rbuf, wbuf)) {
  snd_printk ("cannot enable virtual MIDI mode.\n");
  snd_wavefront_midi_disable_virtual (card);
 }
 return 0;
}
