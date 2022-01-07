
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;






 int SPDIF_BIPHASE_ENABLE_MASK ;
 int STIH407_AUDIO_GLUE_CTRL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int sti_sas_spdif_trigger(struct snd_pcm_substream *substream, int cmd,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;

 switch (cmd) {
 case 130:
 case 132:
  return snd_soc_component_update_bits(component, STIH407_AUDIO_GLUE_CTRL,
         SPDIF_BIPHASE_ENABLE_MASK,
         SPDIF_BIPHASE_ENABLE_MASK);
 case 131:
 case 133:
 case 129:
 case 128:
  return snd_soc_component_update_bits(component, STIH407_AUDIO_GLUE_CTRL,
         SPDIF_BIPHASE_ENABLE_MASK,
         0);
 default:
  return -EINVAL;
 }
}
