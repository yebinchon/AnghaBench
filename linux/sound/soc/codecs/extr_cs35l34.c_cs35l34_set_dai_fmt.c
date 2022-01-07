
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cs35l34_private {int regmap; } ;


 int CS35L34_ADSP_CLK_CTL ;
 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct cs35l34_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs35l34_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 struct cs35l34_private *priv = snd_soc_component_get_drvdata(component);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 129:
  regmap_update_bits(priv->regmap, CS35L34_ADSP_CLK_CTL,
        0x80, 0x80);
  break;
 case 128:
  regmap_update_bits(priv->regmap, CS35L34_ADSP_CLK_CTL,
        0x80, 0x00);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
