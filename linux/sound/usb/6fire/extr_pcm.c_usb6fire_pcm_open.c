
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int channels_max; void* rates; } ;
struct snd_pcm_runtime {TYPE_3__ hw; } ;
struct pcm_substream {int active; struct snd_pcm_substream* instance; } ;
struct pcm_runtime {size_t rate; int stream_mutex; TYPE_2__* chip; struct pcm_substream capture; struct pcm_substream playback; scalar_t__ panic; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int dev; } ;


 size_t ARRAY_SIZE (int ) ;
 int EINVAL ;
 int EPIPE ;
 int IN_N_CHANNELS ;
 int OUT_N_CHANNELS ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_3__ pcm_hw ;
 int rates ;
 void** rates_alsaid ;
 struct pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int usb6fire_pcm_open(struct snd_pcm_substream *alsa_sub)
{
 struct pcm_runtime *rt = snd_pcm_substream_chip(alsa_sub);
 struct pcm_substream *sub = ((void*)0);
 struct snd_pcm_runtime *alsa_rt = alsa_sub->runtime;

 if (rt->panic)
  return -EPIPE;

 mutex_lock(&rt->stream_mutex);
 alsa_rt->hw = pcm_hw;

 if (alsa_sub->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  if (rt->rate < ARRAY_SIZE(rates))
   alsa_rt->hw.rates = rates_alsaid[rt->rate];
  alsa_rt->hw.channels_max = OUT_N_CHANNELS;
  sub = &rt->playback;
 } else if (alsa_sub->stream == SNDRV_PCM_STREAM_CAPTURE) {
  if (rt->rate < ARRAY_SIZE(rates))
   alsa_rt->hw.rates = rates_alsaid[rt->rate];
  alsa_rt->hw.channels_max = IN_N_CHANNELS;
  sub = &rt->capture;
 }

 if (!sub) {
  mutex_unlock(&rt->stream_mutex);
  dev_err(&rt->chip->dev->dev, "invalid stream type.\n");
  return -EINVAL;
 }

 sub->instance = alsa_sub;
 sub->active = 0;
 mutex_unlock(&rt->stream_mutex);
 return 0;
}
