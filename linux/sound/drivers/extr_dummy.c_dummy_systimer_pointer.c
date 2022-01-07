
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct dummy_systimer_pcm {int frac_pos; int lock; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {struct dummy_systimer_pcm* private_data; } ;


 int HZ ;
 int dummy_systimer_update (struct dummy_systimer_pcm*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t
dummy_systimer_pointer(struct snd_pcm_substream *substream)
{
 struct dummy_systimer_pcm *dpcm = substream->runtime->private_data;
 snd_pcm_uframes_t pos;

 spin_lock(&dpcm->lock);
 dummy_systimer_update(dpcm);
 pos = dpcm->frac_pos / HZ;
 spin_unlock(&dpcm->lock);
 return pos;
}
