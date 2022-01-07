
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct hdsp_midi {scalar_t__ istimer; int lock; int timer; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int snd_hdsp_midi_output_timer ;
 int snd_hdsp_midi_output_write (struct hdsp_midi*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void snd_hdsp_midi_output_trigger(struct snd_rawmidi_substream *substream, int up)
{
 struct hdsp_midi *hmidi;
 unsigned long flags;

 hmidi = (struct hdsp_midi *) substream->rmidi->private_data;
 spin_lock_irqsave (&hmidi->lock, flags);
 if (up) {
  if (!hmidi->istimer) {
   timer_setup(&hmidi->timer, snd_hdsp_midi_output_timer,
        0);
   mod_timer(&hmidi->timer, 1 + jiffies);
   hmidi->istimer++;
  }
 } else {
  if (hmidi->istimer && --hmidi->istimer <= 0)
   del_timer (&hmidi->timer);
 }
 spin_unlock_irqrestore (&hmidi->lock, flags);
 if (up)
  snd_hdsp_midi_output_write(hmidi);
}
