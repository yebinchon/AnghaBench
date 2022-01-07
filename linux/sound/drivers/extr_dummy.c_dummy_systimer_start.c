
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct dummy_systimer_pcm {int lock; int base_time; } ;
struct TYPE_2__ {struct dummy_systimer_pcm* private_data; } ;


 int dummy_systimer_rearm (struct dummy_systimer_pcm*) ;
 int jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dummy_systimer_start(struct snd_pcm_substream *substream)
{
 struct dummy_systimer_pcm *dpcm = substream->runtime->private_data;
 spin_lock(&dpcm->lock);
 dpcm->base_time = jiffies;
 dummy_systimer_rearm(dpcm);
 spin_unlock(&dpcm->lock);
 return 0;
}
