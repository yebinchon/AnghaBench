
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int BIT (int ) ;
 int EINVAL ;
 int ML26124_SAI_MODE_SEL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned char) ;

__attribute__((used)) static int ml26124_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 unsigned char mode;
 struct snd_soc_component *component = codec_dai->component;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  mode = 1;
  break;
 case 130:
  mode = 0;
  break;
 default:
  return -EINVAL;
 }
 snd_soc_component_update_bits(component, ML26124_SAI_MODE_SEL, BIT(0), mode);


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
