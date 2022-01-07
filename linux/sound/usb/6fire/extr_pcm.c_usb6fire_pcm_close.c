
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct pcm_substream {int active; int lock; int * instance; } ;
struct TYPE_4__ {int instance; } ;
struct TYPE_3__ {int instance; } ;
struct pcm_runtime {int stream_mutex; int rate; TYPE_2__ capture; TYPE_1__ playback; scalar_t__ panic; } ;


 int ARRAY_SIZE (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rates ;
 struct pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pcm_substream* usb6fire_pcm_get_substream (struct snd_pcm_substream*) ;
 int usb6fire_pcm_stream_stop (struct pcm_runtime*) ;

__attribute__((used)) static int usb6fire_pcm_close(struct snd_pcm_substream *alsa_sub)
{
 struct pcm_runtime *rt = snd_pcm_substream_chip(alsa_sub);
 struct pcm_substream *sub = usb6fire_pcm_get_substream(alsa_sub);
 unsigned long flags;

 if (rt->panic)
  return 0;

 mutex_lock(&rt->stream_mutex);
 if (sub) {

  spin_lock_irqsave(&sub->lock, flags);
  sub->instance = ((void*)0);
  sub->active = 0;
  spin_unlock_irqrestore(&sub->lock, flags);


  if (!rt->playback.instance && !rt->capture.instance) {
   usb6fire_pcm_stream_stop(rt);
   rt->rate = ARRAY_SIZE(rates);
  }
 }
 mutex_unlock(&rt->stream_mutex);
 return 0;
}
