
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_tscm {int lock; struct snd_rawmidi_substream** tx_midi_substreams; } ;
struct snd_rawmidi_substream {size_t number; TYPE_1__* rmidi; } ;
struct TYPE_2__ {struct snd_tscm* private_data; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void midi_capture_trigger(struct snd_rawmidi_substream *substrm, int up)
{
 struct snd_tscm *tscm = substrm->rmidi->private_data;
 unsigned long flags;

 spin_lock_irqsave(&tscm->lock, flags);

 if (up)
  tscm->tx_midi_substreams[substrm->number] = substrm;
 else
  tscm->tx_midi_substreams[substrm->number] = ((void*)0);

 spin_unlock_irqrestore(&tscm->lock, flags);
}
