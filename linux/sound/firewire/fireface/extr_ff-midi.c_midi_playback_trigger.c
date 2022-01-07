
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct snd_ff {int lock; int * rx_midi_work; int * rx_midi_error; } ;
struct TYPE_2__ {struct snd_ff* private_data; } ;


 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void midi_playback_trigger(struct snd_rawmidi_substream *substream,
      int up)
{
 struct snd_ff *ff = substream->rmidi->private_data;
 unsigned long flags;

 spin_lock_irqsave(&ff->lock, flags);

 if (up || !ff->rx_midi_error[substream->number])
  schedule_work(&ff->rx_midi_work[substream->number]);

 spin_unlock_irqrestore(&ff->lock, flags);
}
