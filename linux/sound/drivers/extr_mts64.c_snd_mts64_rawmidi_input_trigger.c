
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct mts64 {int lock; int * mode; } ;
struct TYPE_2__ {struct mts64* private_data; } ;


 int MTS64_MODE_INPUT_TRIGGERED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_mts64_rawmidi_input_trigger(struct snd_rawmidi_substream *substream,
         int up)
{
 struct mts64 *mts = substream->rmidi->private_data;
 unsigned long flags;

 spin_lock_irqsave(&mts->lock, flags);
 if (up)
  mts->mode[substream->number] |= MTS64_MODE_INPUT_TRIGGERED;
 else
   mts->mode[substream->number] &= ~MTS64_MODE_INPUT_TRIGGERED;

 spin_unlock_irqrestore(&mts->lock, flags);
}
