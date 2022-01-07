
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {unsigned int number; TYPE_1__* rmidi; } ;
struct snd_dg00x {int lock; int rx_stream; } ;
struct TYPE_2__ {scalar_t__ device; struct snd_dg00x* private_data; } ;


 int amdtp_dot_midi_trigger (int *,unsigned int,struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void midi_playback_trigger(struct snd_rawmidi_substream *substream,
      int up)
{
 struct snd_dg00x *dg00x = substream->rmidi->private_data;
 unsigned int port;
 unsigned long flags;

 if (substream->rmidi->device == 0)
  port = substream->number;
 else
  port = 2;

 spin_lock_irqsave(&dg00x->lock, flags);

 if (up)
  amdtp_dot_midi_trigger(&dg00x->rx_stream, port, substream);
 else
  amdtp_dot_midi_trigger(&dg00x->rx_stream, port, ((void*)0));

 spin_unlock_irqrestore(&dg00x->lock, flags);
}
