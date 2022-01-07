
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct rt5677_priv {int* master; int regmap; } ;


 int EINVAL ;




 int RT5677_I2S1_SDP ;
 int RT5677_I2S2_SDP ;
 int RT5677_I2S3_SDP ;
 int RT5677_I2S4_SDP ;
 unsigned int RT5677_I2S_BP_INV ;
 int RT5677_I2S_BP_MASK ;
 unsigned int RT5677_I2S_DF_LEFT ;
 int RT5677_I2S_DF_MASK ;
 unsigned int RT5677_I2S_DF_PCM_A ;
 unsigned int RT5677_I2S_DF_PCM_B ;
 int RT5677_I2S_MS_MASK ;
 unsigned int RT5677_I2S_MS_S ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5677_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);
 unsigned int reg_val = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 135:
  rt5677->master[dai->id] = 1;
  break;
 case 134:
  reg_val |= RT5677_I2S_MS_S;
  rt5677->master[dai->id] = 0;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 130:
  reg_val |= RT5677_I2S_BP_INV;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 131:
  break;
 case 129:
  reg_val |= RT5677_I2S_DF_LEFT;
  break;
 case 133:
  reg_val |= RT5677_I2S_DF_PCM_A;
  break;
 case 132:
  reg_val |= RT5677_I2S_DF_PCM_B;
  break;
 default:
  return -EINVAL;
 }

 switch (dai->id) {
 case 139:
  regmap_update_bits(rt5677->regmap, RT5677_I2S1_SDP,
   RT5677_I2S_MS_MASK | RT5677_I2S_BP_MASK |
   RT5677_I2S_DF_MASK, reg_val);
  break;
 case 138:
  regmap_update_bits(rt5677->regmap, RT5677_I2S2_SDP,
   RT5677_I2S_MS_MASK | RT5677_I2S_BP_MASK |
   RT5677_I2S_DF_MASK, reg_val);
  break;
 case 137:
  regmap_update_bits(rt5677->regmap, RT5677_I2S3_SDP,
   RT5677_I2S_MS_MASK | RT5677_I2S_BP_MASK |
   RT5677_I2S_DF_MASK, reg_val);
  break;
 case 136:
  regmap_update_bits(rt5677->regmap, RT5677_I2S4_SDP,
   RT5677_I2S_MS_MASK | RT5677_I2S_BP_MASK |
   RT5677_I2S_DF_MASK, reg_val);
  break;
 default:
  break;
 }


 return 0;
}
