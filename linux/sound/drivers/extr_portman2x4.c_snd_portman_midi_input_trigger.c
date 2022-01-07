
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct portman {int reg_lock; int * mode; } ;
struct TYPE_2__ {struct portman* private_data; } ;


 int PORTMAN2X4_MODE_INPUT_TRIGGERED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_portman_midi_input_trigger(struct snd_rawmidi_substream *substream,
        int up)
{
 struct portman *pm = substream->rmidi->private_data;
 unsigned long flags;

 spin_lock_irqsave(&pm->reg_lock, flags);
 if (up)
  pm->mode[substream->number] |= PORTMAN2X4_MODE_INPUT_TRIGGERED;
 else
  pm->mode[substream->number] &= ~PORTMAN2X4_MODE_INPUT_TRIGGERED;
 spin_unlock_irqrestore(&pm->reg_lock, flags);
}
