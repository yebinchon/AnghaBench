
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int BCKO_64 ;
 int BCKO_MASK ;
 int DIF_MASK ;
 int EINVAL ;
 int I2S ;
 int LEFT_J ;
 int MCKO ;
 int MD_CTL1 ;
 int MS ;
 int PMPLL ;
 int PW_MGMT2 ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int ak4642_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 u8 data;
 u8 bcko;

 data = MCKO | PMPLL;
 bcko = 0;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  data |= MS;
  bcko = BCKO_64;
  break;
 case 130:
  break;
 default:
  return -EINVAL;
 }
 snd_soc_component_update_bits(component, PW_MGMT2, MS | MCKO | PMPLL, data);
 snd_soc_component_update_bits(component, MD_CTL1, BCKO_MASK, bcko);


 data = 0;
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  data = LEFT_J;
  break;
 case 129:
  data = I2S;
  break;



 default:
  return -EINVAL;
 }
 snd_soc_component_update_bits(component, MD_CTL1, DIF_MASK, data);

 return 0;
}
