
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct emu10k1x_midi {int midi_mode; int tx_enable; int output_lock; struct emu10k1x* emu; } ;
struct emu10k1x {int dummy; } ;
struct TYPE_2__ {struct emu10k1x_midi* private_data; } ;


 int EMU10K1X_MIDI_MODE_OUTPUT ;
 scalar_t__ mpu401_output_ready (struct emu10k1x*,struct emu10k1x_midi*) ;
 int mpu401_write_data (struct emu10k1x*,struct emu10k1x_midi*,unsigned char) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emu10k1x_intr_disable (struct emu10k1x*,int ) ;
 int snd_emu10k1x_intr_enable (struct emu10k1x*,int ) ;
 int snd_rawmidi_transmit (struct snd_rawmidi_substream*,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_emu10k1x_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct emu10k1x *emu;
 struct emu10k1x_midi *midi = substream->rmidi->private_data;
 unsigned long flags;

 emu = midi->emu;
 if (snd_BUG_ON(!emu))
  return;

 if (up) {
  int max = 4;
  unsigned char byte;


  spin_lock_irqsave(&midi->output_lock, flags);
  while (max > 0) {
   if (mpu401_output_ready(emu, midi)) {
    if (!(midi->midi_mode & EMU10K1X_MIDI_MODE_OUTPUT) ||
        snd_rawmidi_transmit(substream, &byte, 1) != 1) {

     spin_unlock_irqrestore(&midi->output_lock, flags);
     return;
    }
    mpu401_write_data(emu, midi, byte);
    max--;
   } else {
    break;
   }
  }
  spin_unlock_irqrestore(&midi->output_lock, flags);
  snd_emu10k1x_intr_enable(emu, midi->tx_enable);
 } else {
  snd_emu10k1x_intr_disable(emu, midi->tx_enable);
 }
}
