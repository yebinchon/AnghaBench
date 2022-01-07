
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t number; size_t stream; struct loopback* private_data; } ;
struct loopback_cable {int lock; int ** streams; } ;
struct loopback {struct loopback_cable*** cables; } ;


 int get_cable_index (struct snd_pcm_substream*) ;
 int kfree (struct loopback_cable*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void free_cable(struct snd_pcm_substream *substream)
{
 struct loopback *loopback = substream->private_data;
 int dev = get_cable_index(substream);
 struct loopback_cable *cable;

 cable = loopback->cables[substream->number][dev];
 if (!cable)
  return;
 if (cable->streams[!substream->stream]) {

  spin_lock_irq(&cable->lock);
  cable->streams[substream->stream] = ((void*)0);
  spin_unlock_irq(&cable->lock);
 } else {

  loopback->cables[substream->number][dev] = ((void*)0);
  kfree(cable);
 }
}
