
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int RT5663_I2S1_SDP ;
 unsigned int RT5663_I2S_BP_INV ;
 int RT5663_I2S_BP_MASK ;
 unsigned int RT5663_I2S_DF_LEFT ;
 int RT5663_I2S_DF_MASK ;
 unsigned int RT5663_I2S_DF_PCM_A ;
 unsigned int RT5663_I2S_DF_PCM_B ;
 int RT5663_I2S_MS_MASK ;
 unsigned int RT5663_I2S_MS_S ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,unsigned int) ;

__attribute__((used)) static int rt5663_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 unsigned int reg_val = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 135:
  break;
 case 134:
  reg_val |= RT5663_I2S_MS_S;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 130:
  reg_val |= RT5663_I2S_BP_INV;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 131:
  break;
 case 129:
  reg_val |= RT5663_I2S_DF_LEFT;
  break;
 case 133:
  reg_val |= RT5663_I2S_DF_PCM_A;
  break;
 case 132:
  reg_val |= RT5663_I2S_DF_PCM_B;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, RT5663_I2S1_SDP, RT5663_I2S_MS_MASK |
  RT5663_I2S_BP_MASK | RT5663_I2S_DF_MASK, reg_val);

 return 0;
}
