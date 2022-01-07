
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int M98090_DVM_MASK ;
 int M98090_REG_DAI_PLAYBACK_LEVEL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int max98090_dai_digital_mute(struct snd_soc_dai *codec_dai, int mute)
{
 struct snd_soc_component *component = codec_dai->component;
 int regval;

 regval = mute ? M98090_DVM_MASK : 0;
 snd_soc_component_update_bits(component, M98090_REG_DAI_PLAYBACK_LEVEL,
  M98090_DVM_MASK, regval);

 return 0;
}
