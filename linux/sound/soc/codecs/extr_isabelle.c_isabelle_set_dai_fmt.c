
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 unsigned int ISABELLE_AIF_FMT_MASK ;
 unsigned int ISABELLE_AIF_MS ;
 unsigned int ISABELLE_I2S_MODE ;
 int ISABELLE_INTF_CFG_REG ;
 unsigned int ISABELLE_LEFT_J_MODE ;
 unsigned int ISABELLE_PDM_MODE ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int isabelle_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 unsigned int aif_val = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  aif_val &= ~ISABELLE_AIF_MS;
  break;
 case 132:
  aif_val |= ISABELLE_AIF_MS;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  aif_val |= ISABELLE_I2S_MODE;
  break;
 case 129:
  aif_val |= ISABELLE_LEFT_J_MODE;
  break;
 case 128:
  aif_val |= ISABELLE_PDM_MODE;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, ISABELLE_INTF_CFG_REG,
   (ISABELLE_AIF_MS | ISABELLE_AIF_FMT_MASK), aif_val);

 return 0;
}
