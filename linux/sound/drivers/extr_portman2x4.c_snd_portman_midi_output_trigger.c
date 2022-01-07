
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {int number; TYPE_1__* rmidi; } ;
struct portman {int reg_lock; } ;
struct TYPE_2__ {struct portman* private_data; } ;


 int portman_write_midi (struct portman*,int ,unsigned char) ;
 int snd_rawmidi_transmit (struct snd_rawmidi_substream*,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_portman_midi_output_trigger(struct snd_rawmidi_substream *substream,
         int up)
{
 struct portman *pm = substream->rmidi->private_data;
 unsigned long flags;
 unsigned char byte;

 spin_lock_irqsave(&pm->reg_lock, flags);
 if (up) {
  while ((snd_rawmidi_transmit(substream, &byte, 1) == 1))
   portman_write_midi(pm, substream->number, byte);
 }
 spin_unlock_irqrestore(&pm->reg_lock, flags);
}
