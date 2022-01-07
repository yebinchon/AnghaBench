
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi_substream {struct snd_rawmidi_runtime* runtime; } ;
struct snd_rawmidi_runtime {scalar_t__ avail; scalar_t__ buffer_size; int lock; } ;


 int __snd_rawmidi_transmit_ack (struct snd_rawmidi_substream*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_rawmidi_proceed(struct snd_rawmidi_substream *substream)
{
 struct snd_rawmidi_runtime *runtime = substream->runtime;
 unsigned long flags;
 int count = 0;

 spin_lock_irqsave(&runtime->lock, flags);
 if (runtime->avail < runtime->buffer_size) {
  count = runtime->buffer_size - runtime->avail;
  __snd_rawmidi_transmit_ack(substream, count);
 }
 spin_unlock_irqrestore(&runtime->lock, flags);
 return count;
}
