
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct ak4104_private {int regmap; } ;


 int AK4104_CONTROL1_DIF0 ;
 int AK4104_CONTROL1_DIF1 ;
 int AK4104_REG_CONTROL1 ;
 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct ak4104_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4104_set_dai_fmt(struct snd_soc_dai *codec_dai,
         unsigned int format)
{
 struct snd_soc_component *component = codec_dai->component;
 struct ak4104_private *ak4104 = snd_soc_component_get_drvdata(component);
 int val = 0;
 int ret;


 switch (format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  break;
 case 129:
  val |= AK4104_CONTROL1_DIF0;
  break;
 case 130:
  val |= AK4104_CONTROL1_DIF0 | AK4104_CONTROL1_DIF1;
  break;
 default:
  dev_err(component->dev, "invalid dai format\n");
  return -EINVAL;
 }


 if ((format & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_CBS_CFS)
  return -EINVAL;

 ret = regmap_update_bits(ak4104->regmap, AK4104_REG_CONTROL1,
     AK4104_CONTROL1_DIF0 | AK4104_CONTROL1_DIF1,
     val);
 if (ret < 0)
  return ret;

 return 0;
}
