
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb {int open; int open_lock; int midi_timer; } ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_sb* private_data; } ;


 int SB_OPEN_MIDI_OUTPUT_TRIGGER ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_sb8dsp_midi_output_write (struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_sb8dsp_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 unsigned long flags;
 struct snd_sb *chip;

 chip = substream->rmidi->private_data;
 spin_lock_irqsave(&chip->open_lock, flags);
 if (up) {
  if (!(chip->open & SB_OPEN_MIDI_OUTPUT_TRIGGER)) {
   mod_timer(&chip->midi_timer, 1 + jiffies);
   chip->open |= SB_OPEN_MIDI_OUTPUT_TRIGGER;
  }
 } else {
  if (chip->open & SB_OPEN_MIDI_OUTPUT_TRIGGER) {
   chip->open &= ~SB_OPEN_MIDI_OUTPUT_TRIGGER;
  }
 }
 spin_unlock_irqrestore(&chip->open_lock, flags);

 if (up)
  snd_sb8dsp_midi_output_write(substream);
}
