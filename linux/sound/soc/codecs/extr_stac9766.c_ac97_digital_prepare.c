
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int rate; } ;


 int AC97_EXTENDED_STATUS ;
 unsigned short AC97_PCM_FRONT_DAC_RATE ;
 unsigned short AC97_SPDIF ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,unsigned short,int) ;

__attribute__((used)) static int ac97_digital_prepare(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct snd_pcm_runtime *runtime = substream->runtime;
 unsigned short reg;

 snd_soc_component_write(component, AC97_SPDIF, 0x2002);


 snd_soc_component_update_bits(component, AC97_EXTENDED_STATUS, 0x5, 0x5);

 reg = AC97_PCM_FRONT_DAC_RATE;

 return snd_soc_component_write(component, reg, runtime->rate);
}
