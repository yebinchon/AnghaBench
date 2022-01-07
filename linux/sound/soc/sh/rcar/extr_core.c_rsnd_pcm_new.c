
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct rsnd_dai {int capture; int playback; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int pcm_new ;
 int rsnd_dai_call (int ,int *,struct snd_soc_pcm_runtime*) ;
 struct rsnd_dai* rsnd_dai_to_rdai (struct snd_soc_dai*) ;
 int rsnd_preallocate_pages (struct snd_soc_pcm_runtime*,int *,int ) ;

__attribute__((used)) static int rsnd_pcm_new(struct snd_soc_pcm_runtime *rtd,
   struct snd_soc_dai *dai)
{
 struct rsnd_dai *rdai = rsnd_dai_to_rdai(dai);
 int ret;

 ret = rsnd_dai_call(pcm_new, &rdai->playback, rtd);
 if (ret)
  return ret;

 ret = rsnd_dai_call(pcm_new, &rdai->capture, rtd);
 if (ret)
  return ret;

 ret = rsnd_preallocate_pages(rtd, &rdai->playback,
         SNDRV_PCM_STREAM_PLAYBACK);
 if (ret)
  return ret;

 ret = rsnd_preallocate_pages(rtd, &rdai->capture,
         SNDRV_PCM_STREAM_CAPTURE);
 if (ret)
  return ret;

 return 0;
}
