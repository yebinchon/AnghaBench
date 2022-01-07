
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int lock; int running; } ;
struct snd_pcm_substream {int dummy; } ;


 int rme9652_reset_hw_pointer (struct snd_rme9652*) ;
 struct snd_rme9652* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_rme9652_prepare(struct snd_pcm_substream *substream)
{
 struct snd_rme9652 *rme9652 = snd_pcm_substream_chip(substream);
 unsigned long flags;

 spin_lock_irqsave(&rme9652->lock, flags);
 if (!rme9652->running)
  rme9652_reset_hw_pointer(rme9652);
 spin_unlock_irqrestore(&rme9652->lock, flags);
 return 0;
}
