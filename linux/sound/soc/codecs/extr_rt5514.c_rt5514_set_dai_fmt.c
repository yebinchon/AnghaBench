
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct rt5514_priv {int regmap; } ;


 int EINVAL ;
 unsigned int RT5514_I2S_BP_INV ;
 int RT5514_I2S_BP_MASK ;
 int RT5514_I2S_CTRL1 ;
 unsigned int RT5514_I2S_DF_LEFT ;
 int RT5514_I2S_DF_MASK ;
 unsigned int RT5514_I2S_DF_PCM_A ;
 unsigned int RT5514_I2S_DF_PCM_B ;
 unsigned int RT5514_I2S_LR_INV ;
 int RT5514_I2S_LR_MASK ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;



 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct rt5514_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5514_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 struct rt5514_priv *rt5514 = snd_soc_component_get_drvdata(component);
 unsigned int reg_val = 0;

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;

 case 129:
  reg_val |= RT5514_I2S_LR_INV;
  break;

 case 131:
  reg_val |= RT5514_I2S_BP_INV;
  break;

 case 132:
  reg_val |= RT5514_I2S_BP_INV | RT5514_I2S_LR_INV;
  break;

 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 133:
  break;

 case 130:
  reg_val |= RT5514_I2S_DF_LEFT;
  break;

 case 135:
  reg_val |= RT5514_I2S_DF_PCM_A;
  break;

 case 134:
  reg_val |= RT5514_I2S_DF_PCM_B;
  break;

 default:
  return -EINVAL;
 }

 regmap_update_bits(rt5514->regmap, RT5514_I2S_CTRL1,
  RT5514_I2S_DF_MASK | RT5514_I2S_BP_MASK | RT5514_I2S_LR_MASK,
  reg_val);

 return 0;
}
