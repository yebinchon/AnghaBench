
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun8i_codec {int regmap; } ;
struct snd_soc_dai {int component; } ;


 int BIT (int) ;
 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int SUN8I_AIF1CLK_CTRL ;
 int SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV ;
 int SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT ;
 int SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV ;
 int SUN8I_AIF1CLK_CTRL_AIF1_MSTR_MOD ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct sun8i_codec* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct sun8i_codec *scodec = snd_soc_component_get_drvdata(dai->component);
 u32 value;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 135:
  value = 0x1;
  break;
 case 136:
  value = 0x0;
  break;
 default:
  return -EINVAL;
 }
 regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
      BIT(SUN8I_AIF1CLK_CTRL_AIF1_MSTR_MOD),
      value << SUN8I_AIF1CLK_CTRL_AIF1_MSTR_MOD);


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  value = 0x0;
  break;
 case 131:
  value = 0x1;
  break;
 default:
  return -EINVAL;
 }
 regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
      BIT(SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV),
      value << SUN8I_AIF1CLK_CTRL_AIF1_BCLK_INV);
 regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
      BIT(SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV),
      !value << SUN8I_AIF1CLK_CTRL_AIF1_LRCK_INV);


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 132:
  value = 0x0;
  break;
 case 130:
  value = 0x1;
  break;
 case 128:
  value = 0x2;
  break;
 case 134:
 case 133:
  value = 0x3;
  break;
 default:
  return -EINVAL;
 }
 regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
      BIT(SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT),
      value << SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT);

 return 0;
}
