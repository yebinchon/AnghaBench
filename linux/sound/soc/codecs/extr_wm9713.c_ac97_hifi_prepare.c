
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;


 int AC97_EXTENDED_STATUS ;
 int AC97_PCM_FRONT_DAC_RATE ;
 int AC97_PCM_LR_ADC_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int,int ) ;

__attribute__((used)) static int ac97_hifi_prepare(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int reg;

 snd_soc_component_update_bits(component, AC97_EXTENDED_STATUS, 0x0001, 0x0001);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  reg = AC97_PCM_FRONT_DAC_RATE;
 else
  reg = AC97_PCM_LR_ADC_RATE;

 return snd_soc_component_write(component, reg, runtime->rate);
}
