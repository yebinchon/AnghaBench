
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int DATA_FORMAT_MSK ;
 int EINVAL ;
 int I2S_DATA_FORMAT ;
 int LEFT_J_DATA_FORMAT ;
 int RIGHT_J_DATA_FORMAT ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;



 int STA529_S2PCFG0 ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int sta529_set_dai_fmt(struct snd_soc_dai *codec_dai, u32 fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 u8 mode = 0;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  mode = LEFT_J_DATA_FORMAT;
  break;
 case 130:
  mode = I2S_DATA_FORMAT;
  break;
 case 128:
  mode = RIGHT_J_DATA_FORMAT;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, STA529_S2PCFG0, DATA_FORMAT_MSK, mode);

 return 0;
}
