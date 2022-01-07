
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct regmap {int dummy; } ;
struct aud96p22_priv {struct regmap* regmap; } ;


 int AUD96P22_I2S1_CONFIG_0 ;
 int EINVAL ;
 unsigned int I2S1_MODE_I2S ;
 unsigned int I2S1_MODE_LEFT_J ;
 unsigned int I2S1_MODE_MASK ;
 unsigned int I2S1_MODE_RIGHT_J ;
 unsigned int I2S1_MS_MODE ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int regmap_update_bits (struct regmap*,int ,unsigned int,unsigned int) ;
 struct aud96p22_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int aud96p22_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct aud96p22_priv *priv = snd_soc_component_get_drvdata(dai->component);
 struct regmap *regmap = priv->regmap;
 unsigned int val;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  val = 0;
  break;
 case 132:
  val = I2S1_MS_MODE;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(regmap, AUD96P22_I2S1_CONFIG_0, I2S1_MS_MODE, val);


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  val = I2S1_MODE_RIGHT_J;
  break;
 case 130:
  val = I2S1_MODE_I2S;
  break;
 case 129:
  val = I2S1_MODE_LEFT_J;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(regmap, AUD96P22_I2S1_CONFIG_0, I2S1_MODE_MASK, val);

 return 0;
}
