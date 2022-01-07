
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_op {int note_off; } ;
struct snd_midi_channel {scalar_t__* note; } ;


 scalar_t__ SNDRV_MIDI_NOTE_ON ;
 int note_off (struct snd_midi_op*,void*,struct snd_midi_channel*,int,int ) ;

__attribute__((used)) static void
all_notes_off(struct snd_midi_op *ops, void *drv, struct snd_midi_channel *chan)
{
 int n;

 if (! ops->note_off)
  return;
 for (n = 0; n < 128; n++) {
  if (chan->note[n] == SNDRV_MIDI_NOTE_ON)
   note_off(ops, drv, chan, n, 0);
 }
}
