
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct ad1836_priv {int regmap; } ;


 int AD1836_ADC_CTRL2 ;
 int AD1836_ADC_WORD_LEN_MASK ;
 int AD1836_ADC_WORD_OFFSET ;
 int AD1836_DAC_CTRL1 ;
 int AD1836_DAC_WORD_LEN_MASK ;
 int AD1836_DAC_WORD_LEN_OFFSET ;
 int AD1836_WORD_LEN_16 ;
 int AD1836_WORD_LEN_20 ;
 int AD1836_WORD_LEN_24 ;
 int EINVAL ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct ad1836_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int ad1836_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *params,
  struct snd_soc_dai *dai)
{
 struct ad1836_priv *ad1836 = snd_soc_component_get_drvdata(dai->component);
 int word_len = 0;


 switch (params_width(params)) {
 case 16:
  word_len = AD1836_WORD_LEN_16;
  break;
 case 20:
  word_len = AD1836_WORD_LEN_20;
  break;
 case 24:
 case 32:
  word_len = AD1836_WORD_LEN_24;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(ad1836->regmap, AD1836_DAC_CTRL1,
  AD1836_DAC_WORD_LEN_MASK,
  word_len << AD1836_DAC_WORD_LEN_OFFSET);

 regmap_update_bits(ad1836->regmap, AD1836_ADC_CTRL2,
  AD1836_ADC_WORD_LEN_MASK,
  word_len << AD1836_ADC_WORD_OFFSET);

 return 0;
}
