
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct snd_sb {int open_lock; int midi_timer; struct snd_rawmidi_substream* midi_substream_output; } ;
struct snd_rawmidi_substream {int dummy; } ;


 struct snd_sb* chip ;
 struct snd_sb* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int midi_timer ;
 int mod_timer (int *,scalar_t__) ;
 int snd_sb8dsp_midi_output_write (struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_sb8dsp_midi_output_timer(struct timer_list *t)
{
 struct snd_sb *chip = from_timer(chip, t, midi_timer);
 struct snd_rawmidi_substream *substream = chip->midi_substream_output;
 unsigned long flags;

 spin_lock_irqsave(&chip->open_lock, flags);
 mod_timer(&chip->midi_timer, 1 + jiffies);
 spin_unlock_irqrestore(&chip->open_lock, flags);
 snd_sb8dsp_midi_output_write(substream);
}
