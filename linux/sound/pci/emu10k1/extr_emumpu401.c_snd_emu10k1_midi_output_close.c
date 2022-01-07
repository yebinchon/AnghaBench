
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_emu10k1_midi {int midi_mode; int open_lock; int * substream_output; int tx_enable; struct snd_emu10k1* emu; } ;
struct snd_emu10k1 {int dummy; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 int EMU10K1_MIDI_MODE_INPUT ;
 int EMU10K1_MIDI_MODE_OUTPUT ;
 int ENXIO ;
 int MPU401_RESET ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emu10k1_intr_disable (struct snd_emu10k1*,int ) ;
 int snd_emu10k1_midi_cmd (struct snd_emu10k1*,struct snd_emu10k1_midi*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_midi_output_close(struct snd_rawmidi_substream *substream)
{
 struct snd_emu10k1 *emu;
 struct snd_emu10k1_midi *midi = (struct snd_emu10k1_midi *)substream->rmidi->private_data;
 unsigned long flags;
 int err = 0;

 emu = midi->emu;
 if (snd_BUG_ON(!emu))
  return -ENXIO;
 spin_lock_irqsave(&midi->open_lock, flags);
 snd_emu10k1_intr_disable(emu, midi->tx_enable);
 midi->midi_mode &= ~EMU10K1_MIDI_MODE_OUTPUT;
 midi->substream_output = ((void*)0);
 if (!(midi->midi_mode & EMU10K1_MIDI_MODE_INPUT)) {
  spin_unlock_irqrestore(&midi->open_lock, flags);
  err = snd_emu10k1_midi_cmd(emu, midi, MPU401_RESET, 0);
 } else {
  spin_unlock_irqrestore(&midi->open_lock, flags);
 }
 return err;
}
