
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_emu10k1_midi {int midi_mode; int open_lock; struct snd_rawmidi_substream* substream_input; struct snd_emu10k1* emu; } ;
struct snd_emu10k1 {int dummy; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 int EIO ;
 int EMU10K1_MIDI_MODE_INPUT ;
 int EMU10K1_MIDI_MODE_OUTPUT ;
 int ENXIO ;
 int MPU401_ENTER_UART ;
 int MPU401_RESET ;
 scalar_t__ snd_BUG_ON (int) ;
 scalar_t__ snd_emu10k1_midi_cmd (struct snd_emu10k1*,struct snd_emu10k1_midi*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_midi_input_open(struct snd_rawmidi_substream *substream)
{
 struct snd_emu10k1 *emu;
 struct snd_emu10k1_midi *midi = (struct snd_emu10k1_midi *)substream->rmidi->private_data;
 unsigned long flags;

 emu = midi->emu;
 if (snd_BUG_ON(!emu))
  return -ENXIO;
 spin_lock_irqsave(&midi->open_lock, flags);
 midi->midi_mode |= EMU10K1_MIDI_MODE_INPUT;
 midi->substream_input = substream;
 if (!(midi->midi_mode & EMU10K1_MIDI_MODE_OUTPUT)) {
  spin_unlock_irqrestore(&midi->open_lock, flags);
  if (snd_emu10k1_midi_cmd(emu, midi, MPU401_RESET, 1))
   goto error_out;
  if (snd_emu10k1_midi_cmd(emu, midi, MPU401_ENTER_UART, 1))
   goto error_out;
 } else {
  spin_unlock_irqrestore(&midi->open_lock, flags);
 }
 return 0;

error_out:
 return -EIO;
}
