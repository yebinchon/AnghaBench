
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; } ;
struct pcm_substream {int dummy; } ;
struct pcm_runtime {TYPE_2__* chip; struct pcm_substream capture; struct pcm_substream playback; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_err (int *,char*) ;
 struct pcm_runtime* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static struct pcm_substream *usb6fire_pcm_get_substream(
  struct snd_pcm_substream *alsa_sub)
{
 struct pcm_runtime *rt = snd_pcm_substream_chip(alsa_sub);

 if (alsa_sub->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return &rt->playback;
 else if (alsa_sub->stream == SNDRV_PCM_STREAM_CAPTURE)
  return &rt->capture;
 dev_err(&rt->chip->dev->dev, "error getting pcm substream slot.\n");
 return ((void*)0);
}
