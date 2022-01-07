
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_substream {int number; TYPE_1__* rmidi; } ;
struct snd_motu {int lock; int tx_stream; } ;
struct TYPE_2__ {struct snd_motu* private_data; } ;


 int amdtp_motu_midi_trigger (int *,int ,struct snd_rawmidi_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void midi_capture_trigger(struct snd_rawmidi_substream *substrm, int up)
{
 struct snd_motu *motu = substrm->rmidi->private_data;
 unsigned long flags;

 spin_lock_irqsave(&motu->lock, flags);

 if (up)
  amdtp_motu_midi_trigger(&motu->tx_stream, substrm->number,
     substrm);
 else
  amdtp_motu_midi_trigger(&motu->tx_stream, substrm->number,
     ((void*)0));

 spin_unlock_irqrestore(&motu->lock, flags);
}
