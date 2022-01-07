
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct pcm_substream {int active; int lock; } ;
struct pcm_runtime {scalar_t__ panic; } ;


 int EINVAL ;
 int ENODEV ;
 int EPIPE ;




 struct pcm_substream* hiface_pcm_get_substream (struct snd_pcm_substream*) ;
 struct pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hiface_pcm_trigger(struct snd_pcm_substream *alsa_sub, int cmd)
{
 struct pcm_substream *sub = hiface_pcm_get_substream(alsa_sub);
 struct pcm_runtime *rt = snd_pcm_substream_chip(alsa_sub);

 if (rt->panic)
  return -EPIPE;
 if (!sub)
  return -ENODEV;

 switch (cmd) {
 case 129:
 case 130:
  spin_lock_irq(&sub->lock);
  sub->active = 1;
  spin_unlock_irq(&sub->lock);
  return 0;

 case 128:
 case 131:
  spin_lock_irq(&sub->lock);
  sub->active = 0;
  spin_unlock_irq(&sub->lock);
  return 0;

 default:
  return -EINVAL;
 }
}
