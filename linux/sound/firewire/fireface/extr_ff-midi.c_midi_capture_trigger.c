
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct snd_ff {int lock; int * tx_midi_substreams; } ;
struct TYPE_2__ {struct snd_ff* private_data; } ;


 int WRITE_ONCE (int ,struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void midi_capture_trigger(struct snd_rawmidi_substream *substream,
     int up)
{
 struct snd_ff *ff = substream->rmidi->private_data;
 unsigned long flags;

 spin_lock_irqsave(&ff->lock, flags);

 if (up)
  WRITE_ONCE(ff->tx_midi_substreams[substream->number],
      substream);
 else
  WRITE_ONCE(ff->tx_midi_substreams[substream->number], ((void*)0));

 spin_unlock_irqrestore(&ff->lock, flags);
}
