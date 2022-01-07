
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int rate_max; int rates; } ;
struct snd_pcm_runtime {TYPE_3__ hw; } ;
struct pcm_substream {int active; struct snd_pcm_substream* instance; } ;
struct pcm_runtime {int stream_mutex; scalar_t__ extra_freq; TYPE_2__* chip; struct pcm_substream playback; scalar_t__ panic; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct device dev; } ;


 int EINVAL ;
 int EPIPE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_RATE_KNOT ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int constraints_extra_rates ;
 int dev_err (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_3__ pcm_hw ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int hiface_pcm_open(struct snd_pcm_substream *alsa_sub)
{
 struct pcm_runtime *rt = snd_pcm_substream_chip(alsa_sub);
 struct pcm_substream *sub = ((void*)0);
 struct snd_pcm_runtime *alsa_rt = alsa_sub->runtime;
 int ret;

 if (rt->panic)
  return -EPIPE;

 mutex_lock(&rt->stream_mutex);
 alsa_rt->hw = pcm_hw;

 if (alsa_sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
  sub = &rt->playback;

 if (!sub) {
  struct device *device = &rt->chip->dev->dev;
  mutex_unlock(&rt->stream_mutex);
  dev_err(device, "Invalid stream type\n");
  return -EINVAL;
 }

 if (rt->extra_freq) {
  alsa_rt->hw.rates |= SNDRV_PCM_RATE_KNOT;
  alsa_rt->hw.rate_max = 384000;


  ret = snd_pcm_hw_constraint_list(alsa_sub->runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       &constraints_extra_rates);
  if (ret < 0) {
   mutex_unlock(&rt->stream_mutex);
   return ret;
  }
 }

 sub->instance = alsa_sub;
 sub->active = 0;
 mutex_unlock(&rt->stream_mutex);
 return 0;
}
