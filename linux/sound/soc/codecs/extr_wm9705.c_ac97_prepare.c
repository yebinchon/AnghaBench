
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; } ;
struct TYPE_2__ {int rate; } ;


 int AC97_EXTENDED_STATUS ;
 int AC97_PCM_FRONT_DAC_RATE ;
 int AC97_PCM_LR_ADC_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int,int ) ;

__attribute__((used)) static int ac97_prepare(struct snd_pcm_substream *substream,
   struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 int reg;

 snd_soc_component_update_bits(component, AC97_EXTENDED_STATUS, 0x1, 0x1);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  reg = AC97_PCM_FRONT_DAC_RATE;
 else
  reg = AC97_PCM_LR_ADC_RATE;

 return snd_soc_component_write(component, reg, substream->runtime->rate);
}
