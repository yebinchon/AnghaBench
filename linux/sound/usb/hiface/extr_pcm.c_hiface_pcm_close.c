
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct pcm_substream {int active; int lock; int * instance; } ;
struct pcm_runtime {int stream_mutex; scalar_t__ panic; } ;


 struct pcm_substream* hiface_pcm_get_substream (struct snd_pcm_substream*) ;
 int hiface_pcm_stream_stop (struct pcm_runtime*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hiface_pcm_close(struct snd_pcm_substream *alsa_sub)
{
 struct pcm_runtime *rt = snd_pcm_substream_chip(alsa_sub);
 struct pcm_substream *sub = hiface_pcm_get_substream(alsa_sub);
 unsigned long flags;

 if (rt->panic)
  return 0;

 mutex_lock(&rt->stream_mutex);
 if (sub) {
  hiface_pcm_stream_stop(rt);


  spin_lock_irqsave(&sub->lock, flags);
  sub->instance = ((void*)0);
  sub->active = 0;
  spin_unlock_irqrestore(&sub->lock, flags);

 }
 mutex_unlock(&rt->stream_mutex);
 return 0;
}
