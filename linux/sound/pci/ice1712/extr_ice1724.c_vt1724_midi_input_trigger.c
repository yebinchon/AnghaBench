
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_ice1712 {int midi_input; int reg_lock; } ;
struct TYPE_2__ {struct snd_ice1712* private_data; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vt1724_midi_read (struct snd_ice1712*) ;

__attribute__((used)) static void vt1724_midi_input_trigger(struct snd_rawmidi_substream *s, int up)
{
 struct snd_ice1712 *ice = s->rmidi->private_data;
 unsigned long flags;

 spin_lock_irqsave(&ice->reg_lock, flags);
 if (up) {
  ice->midi_input = 1;
  vt1724_midi_read(ice);
 } else {
  ice->midi_input = 0;
 }
 spin_unlock_irqrestore(&ice->reg_lock, flags);
}
