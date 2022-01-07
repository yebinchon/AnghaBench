
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_op {int (* note_off ) (void*,int,int,struct snd_midi_channel*) ;} ;
struct snd_midi_channel {int* note; scalar_t__ gm_hold; } ;


 int SNDRV_MIDI_NOTE_RELEASED ;
 int SNDRV_MIDI_NOTE_SOSTENUTO ;
 int stub1 (void*,int,int,struct snd_midi_channel*) ;

__attribute__((used)) static void
note_off(struct snd_midi_op *ops, void *drv, struct snd_midi_channel *chan,
  int note, int vel)
{
 if (chan->gm_hold) {

  chan->note[note] |= SNDRV_MIDI_NOTE_RELEASED;
 } else if (chan->note[note] & SNDRV_MIDI_NOTE_SOSTENUTO) {


  chan->note[note] |= SNDRV_MIDI_NOTE_RELEASED;
 } else {
  chan->note[note] = 0;
  if (ops->note_off)
   ops->note_off(drv, note, vel, chan);
 }
}
