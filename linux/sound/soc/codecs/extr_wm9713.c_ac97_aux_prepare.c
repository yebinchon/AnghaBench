
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;


 int AC97_EXTENDED_STATUS ;
 int AC97_PCI_SID ;
 int AC97_PCM_SURR_DAC_RATE ;
 int ENODEV ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int ac97_aux_prepare(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_soc_component_update_bits(component, AC97_EXTENDED_STATUS, 0x0001, 0x0001);
 snd_soc_component_update_bits(component, AC97_PCI_SID, 0x8000, 0x8000);

 if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
  return -ENODEV;

 return snd_soc_component_write(component, AC97_PCM_SURR_DAC_RATE, runtime->rate);
}
