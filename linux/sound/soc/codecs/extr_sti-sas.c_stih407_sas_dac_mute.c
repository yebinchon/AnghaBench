
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int STIH407_AUDIO_DAC_CTRL ;
 int STIH407_DAC_SOFTMUTE_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int stih407_sas_dac_mute(struct snd_soc_dai *dai, int mute, int stream)
{
 struct snd_soc_component *component = dai->component;

 if (mute) {
  return snd_soc_component_update_bits(component, STIH407_AUDIO_DAC_CTRL,
         STIH407_DAC_SOFTMUTE_MASK,
         STIH407_DAC_SOFTMUTE_MASK);
 } else {
  return snd_soc_component_update_bits(component, STIH407_AUDIO_DAC_CTRL,
         STIH407_DAC_SOFTMUTE_MASK,
         0);
 }
}
