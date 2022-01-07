
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_rawmidi_substream {scalar_t__ number; TYPE_1__* rmidi; } ;
struct mts64 {int lock; } ;
struct TYPE_2__ {struct mts64* private_data; } ;


 int mts64_write_midi (struct mts64*,int ,scalar_t__) ;
 int snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int) ;
 int snd_rawmidi_transmit_peek (struct snd_rawmidi_substream*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_mts64_rawmidi_output_trigger(struct snd_rawmidi_substream *substream,
          int up)
{
 struct mts64 *mts = substream->rmidi->private_data;
 u8 data;
 unsigned long flags;

 spin_lock_irqsave(&mts->lock, flags);
 while (snd_rawmidi_transmit_peek(substream, &data, 1) == 1) {
  mts64_write_midi(mts, data, substream->number+1);
  snd_rawmidi_transmit_ack(substream, 1);
 }
 spin_unlock_irqrestore(&mts->lock, flags);
}
