
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CS42L42_ASP_CLK_CFG ;
 int CS42L42_ASP_LCPOL_IN_MASK ;
 int CS42L42_ASP_LCPOL_IN_SHIFT ;
 int CS42L42_ASP_MASTER_MODE ;
 int CS42L42_ASP_MODE_MASK ;
 int CS42L42_ASP_MODE_SHIFT ;
 int CS42L42_ASP_POL_INV ;
 int CS42L42_ASP_SCPOL_IN_DAC_MASK ;
 int CS42L42_ASP_SCPOL_IN_DAC_SHIFT ;
 int CS42L42_ASP_SLAVE_MODE ;
 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int cs42l42_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 u32 asp_cfg_val = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 135:
  asp_cfg_val |= CS42L42_ASP_MASTER_MODE <<
    CS42L42_ASP_MODE_SHIFT;
  break;
 case 134:
  asp_cfg_val |= CS42L42_ASP_SLAVE_MODE <<
    CS42L42_ASP_MODE_SHIFT;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 133:
 case 130:
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 129:
  asp_cfg_val |= CS42L42_ASP_POL_INV <<
    CS42L42_ASP_LCPOL_IN_SHIFT;
  break;
 case 131:
  asp_cfg_val |= CS42L42_ASP_POL_INV <<
    CS42L42_ASP_SCPOL_IN_DAC_SHIFT;
  break;
 case 132:
  asp_cfg_val |= CS42L42_ASP_POL_INV <<
    CS42L42_ASP_LCPOL_IN_SHIFT;
  asp_cfg_val |= CS42L42_ASP_POL_INV <<
    CS42L42_ASP_SCPOL_IN_DAC_SHIFT;
  break;
 }

 snd_soc_component_update_bits(component, CS42L42_ASP_CLK_CFG,
    CS42L42_ASP_MODE_MASK |
    CS42L42_ASP_SCPOL_IN_DAC_MASK |
    CS42L42_ASP_LCPOL_IN_MASK, asp_cfg_val);

 return 0;
}
