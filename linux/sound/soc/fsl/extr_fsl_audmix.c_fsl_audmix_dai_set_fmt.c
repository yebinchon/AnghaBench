
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int FSL_AUDMIX_CTR ;
 int FSL_AUDMIX_CTR_OUTCKPOL (int) ;
 int FSL_AUDMIX_CTR_OUTCKPOL_MASK ;



 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int fsl_audmix_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *comp = dai->component;
 u32 mask = 0, ctr = 0;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 132:
 case 131:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:

  ctr |= FSL_AUDMIX_CTR_OUTCKPOL(0);
  break;
 case 128:

  ctr |= FSL_AUDMIX_CTR_OUTCKPOL(1);
  break;
 default:
  return -EINVAL;
 }

 mask |= FSL_AUDMIX_CTR_OUTCKPOL_MASK;

 return snd_soc_component_update_bits(comp, FSL_AUDMIX_CTR, mask, ctr);
}
