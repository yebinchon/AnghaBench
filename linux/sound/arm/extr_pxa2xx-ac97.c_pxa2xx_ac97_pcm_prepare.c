
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;


 int AC97_PCM_FRONT_DAC_RATE ;
 int AC97_PCM_LR_ADC_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int pxa2xx_ac97_ac97 ;
 int pxa2xx_pcm_prepare (struct snd_pcm_substream*) ;
 int snd_ac97_set_rate (int ,int,int ) ;

__attribute__((used)) static int pxa2xx_ac97_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 int reg = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) ?
    AC97_PCM_FRONT_DAC_RATE : AC97_PCM_LR_ADC_RATE;
 int ret;

 ret = pxa2xx_pcm_prepare(substream);
 if (ret < 0)
  return ret;

 return snd_ac97_set_rate(pxa2xx_ac97_ac97, reg, runtime->rate);
}
