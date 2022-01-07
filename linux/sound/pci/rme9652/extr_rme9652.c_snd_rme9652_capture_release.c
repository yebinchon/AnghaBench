
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int capture_pid; int lock; int * capture_substream; } ;
struct snd_pcm_substream {int dummy; } ;


 struct snd_rme9652* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rme9652_capture_release(struct snd_pcm_substream *substream)
{
 struct snd_rme9652 *rme9652 = snd_pcm_substream_chip(substream);

 spin_lock_irq(&rme9652->lock);

 rme9652->capture_pid = -1;
 rme9652->capture_substream = ((void*)0);

 spin_unlock_irq(&rme9652->lock);
 return 0;
}
