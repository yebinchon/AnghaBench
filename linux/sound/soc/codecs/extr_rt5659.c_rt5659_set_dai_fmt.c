
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct rt5659_priv {int* master; } ;


 int EINVAL ;



 int RT5659_I2S1_SDP ;
 int RT5659_I2S2_SDP ;
 int RT5659_I2S3_SDP ;
 unsigned int RT5659_I2S_BP_INV ;
 int RT5659_I2S_BP_MASK ;
 unsigned int RT5659_I2S_DF_LEFT ;
 int RT5659_I2S_DF_MASK ;
 unsigned int RT5659_I2S_DF_PCM_A ;
 unsigned int RT5659_I2S_DF_PCM_B ;
 int RT5659_I2S_MS_MASK ;
 unsigned int RT5659_I2S_MS_S ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int dev_err (int ,char*,int) ;
 struct rt5659_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,unsigned int) ;

__attribute__((used)) static int rt5659_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 struct rt5659_priv *rt5659 = snd_soc_component_get_drvdata(component);
 unsigned int reg_val = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 135:
  rt5659->master[dai->id] = 1;
  break;
 case 134:
  reg_val |= RT5659_I2S_MS_S;
  rt5659->master[dai->id] = 0;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 130:
  reg_val |= RT5659_I2S_BP_INV;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 131:
  break;
 case 129:
  reg_val |= RT5659_I2S_DF_LEFT;
  break;
 case 133:
  reg_val |= RT5659_I2S_DF_PCM_A;
  break;
 case 132:
  reg_val |= RT5659_I2S_DF_PCM_B;
  break;
 default:
  return -EINVAL;
 }

 switch (dai->id) {
 case 138:
  snd_soc_component_update_bits(component, RT5659_I2S1_SDP,
   RT5659_I2S_MS_MASK | RT5659_I2S_BP_MASK |
   RT5659_I2S_DF_MASK, reg_val);
  break;
 case 137:
  snd_soc_component_update_bits(component, RT5659_I2S2_SDP,
   RT5659_I2S_MS_MASK | RT5659_I2S_BP_MASK |
   RT5659_I2S_DF_MASK, reg_val);
  break;
 case 136:
  snd_soc_component_update_bits(component, RT5659_I2S3_SDP,
   RT5659_I2S_MS_MASK | RT5659_I2S_BP_MASK |
   RT5659_I2S_DF_MASK, reg_val);
  break;
 default:
  dev_err(component->dev, "Invalid dai->id: %d\n", dai->id);
  return -EINVAL;
 }
 return 0;
}
