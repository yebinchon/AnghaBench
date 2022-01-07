
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; int mutex; } ;
struct snd_pcm_substream {TYPE_2__ self_group; TYPE_1__* pcm; } ;
struct TYPE_3__ {scalar_t__ nonatomic; } ;


 int mutex_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;

unsigned long _snd_pcm_stream_lock_irqsave(struct snd_pcm_substream *substream)
{
 unsigned long flags = 0;
 if (substream->pcm->nonatomic)
  mutex_lock(&substream->self_group.mutex);
 else
  spin_lock_irqsave(&substream->self_group.lock, flags);
 return flags;
}
