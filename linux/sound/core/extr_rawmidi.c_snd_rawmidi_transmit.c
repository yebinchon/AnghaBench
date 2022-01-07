
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {int opened; struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {int lock; } ;


 int EBADFD ;
 int __snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int) ;
 int __snd_rawmidi_transmit_peek (struct snd_rawmidi_substream*,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_rawmidi_transmit(struct snd_rawmidi_substream *substream,
    unsigned char *buffer, int count)
{
 struct snd_rawmidi_runtime *runtime = substream->runtime;
 int result;
 unsigned long flags;

 spin_lock_irqsave(&runtime->lock, flags);
 if (!substream->opened)
  result = -EBADFD;
 else {
  count = __snd_rawmidi_transmit_peek(substream, buffer, count);
  if (count <= 0)
   result = count;
  else
   result = __snd_rawmidi_transmit_ack(substream, count);
 }
 spin_unlock_irqrestore(&runtime->lock, flags);
 return result;
}
