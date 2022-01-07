
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; } ;
struct pcm_substream {int dummy; } ;
struct pcm_runtime {struct pcm_substream playback; TYPE_2__* chip; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct device dev; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (struct device*,char*) ;
 struct pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static struct pcm_substream *hiface_pcm_get_substream(struct snd_pcm_substream
            *alsa_sub)
{
 struct pcm_runtime *rt = snd_pcm_substream_chip(alsa_sub);
 struct device *device = &rt->chip->dev->dev;

 if (alsa_sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return &rt->playback;

 dev_err(device, "Error getting pcm substream slot.\n");
 return ((void*)0);
}
