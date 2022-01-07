
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CS35L32_ADSP_CTL ;
 int CS35L32_ADSP_MASTER_MASK ;
 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int cs35l32_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 129:
  snd_soc_component_update_bits(component, CS35L32_ADSP_CTL,
        CS35L32_ADSP_MASTER_MASK,
    CS35L32_ADSP_MASTER_MASK);
  break;
 case 128:
  snd_soc_component_update_bits(component, CS35L32_ADSP_CTL,
        CS35L32_ADSP_MASTER_MASK, 0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
