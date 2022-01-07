
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; int mutex; } ;
struct snd_pcm_substream {TYPE_2__ self_group; TYPE_1__* pcm; } ;
struct TYPE_3__ {scalar_t__ nonatomic; } ;


 int mutex_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_pcm_stream_unlock_irqrestore(struct snd_pcm_substream *substream,
          unsigned long flags)
{
 if (substream->pcm->nonatomic)
  mutex_unlock(&substream->self_group.mutex);
 else
  spin_unlock_irqrestore(&substream->self_group.lock, flags);
}
