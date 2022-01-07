
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct rt1308_priv {int master; } ;


 int EINVAL ;

 unsigned int RT1308_I2S_BCLK_INV ;
 int RT1308_I2S_BCLK_MASK ;
 unsigned int RT1308_I2S_DF_SEL_LEFT ;
 int RT1308_I2S_DF_SEL_MASK ;
 unsigned int RT1308_I2S_DF_SEL_PCM_A ;
 unsigned int RT1308_I2S_DF_SEL_PCM_B ;
 int RT1308_I2S_SET_1 ;
 int RT1308_I2S_SET_2 ;



 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int dev_err (int ,char*,int) ;
 struct rt1308_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int rt1308_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 struct rt1308_priv *rt1308 = snd_soc_component_get_drvdata(component);
 unsigned int reg_val = 0, reg1_val = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 134:
  rt1308->master = 0;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 131:
  break;
 case 129:
  reg_val |= RT1308_I2S_DF_SEL_LEFT;
  break;
 case 133:
  reg_val |= RT1308_I2S_DF_SEL_PCM_A;
  break;
 case 132:
  reg_val |= RT1308_I2S_DF_SEL_PCM_B;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 130:
  reg1_val |= RT1308_I2S_BCLK_INV;
  break;
 default:
  return -EINVAL;
 }

 switch (dai->id) {
 case 135:
  snd_soc_component_update_bits(component,
   RT1308_I2S_SET_1, RT1308_I2S_DF_SEL_MASK,
   reg_val);
  snd_soc_component_update_bits(component,
   RT1308_I2S_SET_2, RT1308_I2S_BCLK_MASK,
   reg1_val);
  break;
 default:
  dev_err(component->dev, "Invalid dai->id: %d\n", dai->id);
  return -EINVAL;
 }
 return 0;
}
