
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct max98371_priv {int regmap; } ;


 int EINVAL ;
 unsigned int MAX98371_DAI_LEFT ;
 unsigned int MAX98371_DAI_RIGHT ;
 int MAX98371_FMT ;
 int MAX98371_FMT_MODE_MASK ;

 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 struct max98371_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max98371_dai_set_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 struct max98371_priv *max98371 = snd_soc_component_get_drvdata(component);
 unsigned int val = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  break;
 default:
  dev_err(component->dev, "DAI clock mode unsupported");
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  val |= 0;
  break;
 case 128:
  val |= MAX98371_DAI_RIGHT;
  break;
 case 129:
  val |= MAX98371_DAI_LEFT;
  break;
 default:
  dev_err(component->dev, "DAI wrong mode unsupported");
  return -EINVAL;
 }
 regmap_update_bits(max98371->regmap, MAX98371_FMT,
   MAX98371_FMT_MODE_MASK, val);
 return 0;
}
