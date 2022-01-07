
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_ice1712 {int reg_lock; } ;
struct TYPE_2__ {struct snd_ice1712* private_data; } ;


 int enable_midi_irq (struct snd_ice1712*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void vt1724_enable_midi_irq(struct snd_rawmidi_substream *substream,
       u8 flag, int enable)
{
 struct snd_ice1712 *ice = substream->rmidi->private_data;

 spin_lock_irq(&ice->reg_lock);
 enable_midi_irq(ice, flag, enable);
 spin_unlock_irq(&ice->reg_lock);
}
