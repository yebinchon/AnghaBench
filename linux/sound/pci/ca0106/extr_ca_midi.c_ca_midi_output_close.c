
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_ca_midi {int midi_mode; int open_lock; int reset; int * substream_output; int tx_enable; int (* interrupt_disable ) (struct snd_ca_midi*,int ) ;int dev_id; } ;
struct TYPE_2__ {struct snd_ca_midi* private_data; } ;


 int CA_MIDI_MODE_INPUT ;
 int CA_MIDI_MODE_OUTPUT ;
 int ENXIO ;
 int ca_midi_cmd (struct snd_ca_midi*,int ,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_ca_midi*,int ) ;

__attribute__((used)) static int ca_midi_output_close(struct snd_rawmidi_substream *substream)
{
 struct snd_ca_midi *midi = substream->rmidi->private_data;
 unsigned long flags;

 if (snd_BUG_ON(!midi->dev_id))
  return -ENXIO;

 spin_lock_irqsave(&midi->open_lock, flags);

 midi->interrupt_disable(midi,midi->tx_enable);
 midi->midi_mode &= ~CA_MIDI_MODE_OUTPUT;
 midi->substream_output = ((void*)0);

 if (!(midi->midi_mode & CA_MIDI_MODE_INPUT)) {
  spin_unlock_irqrestore(&midi->open_lock, flags);
  ca_midi_cmd(midi, midi->reset, 0);
 } else {
  spin_unlock_irqrestore(&midi->open_lock, flags);
 }
 return 0;
}
