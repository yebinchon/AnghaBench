
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_ca_midi {int midi_mode; int tx_enable; int (* interrupt_disable ) (struct snd_ca_midi*,int ) ;int (* interrupt_enable ) (struct snd_ca_midi*,int ) ;int output_lock; int dev_id; } ;
struct TYPE_2__ {struct snd_ca_midi* private_data; } ;


 int CA_MIDI_MODE_OUTPUT ;
 scalar_t__ ca_midi_output_ready (struct snd_ca_midi*) ;
 int ca_midi_write_data (struct snd_ca_midi*,unsigned char) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_rawmidi_transmit (struct snd_rawmidi_substream*,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_ca_midi*,int ) ;
 int stub2 (struct snd_ca_midi*,int ) ;

__attribute__((used)) static void ca_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct snd_ca_midi *midi = substream->rmidi->private_data;
 unsigned long flags;

 if (snd_BUG_ON(!midi->dev_id))
  return;

 if (up) {
  int max = 4;
  unsigned char byte;

  spin_lock_irqsave(&midi->output_lock, flags);


  while (max > 0) {
   if (ca_midi_output_ready(midi)) {
    if (!(midi->midi_mode & CA_MIDI_MODE_OUTPUT) ||
        snd_rawmidi_transmit(substream, &byte, 1) != 1) {

     spin_unlock_irqrestore(&midi->output_lock, flags);
     return;
    }
    ca_midi_write_data(midi, byte);
    max--;
   } else {
    break;
   }
  }

  spin_unlock_irqrestore(&midi->output_lock, flags);
  midi->interrupt_enable(midi,midi->tx_enable);

 } else {
  midi->interrupt_disable(midi,midi->tx_enable);
 }
}
