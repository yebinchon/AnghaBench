
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct ad193x_priv {int regmap; } ;


 unsigned int AD193X_16_CHANNELS ;
 unsigned int AD193X_2_CHANNELS ;
 unsigned int AD193X_4_CHANNELS ;
 unsigned int AD193X_8_CHANNELS ;
 int AD193X_ADC_CHAN_MASK ;
 unsigned int AD193X_ADC_CHAN_SHFT ;
 int AD193X_ADC_CTRL2 ;
 int AD193X_DAC_CHAN_MASK ;
 unsigned int AD193X_DAC_CHAN_SHFT ;
 int AD193X_DAC_CTRL1 ;
 int EINVAL ;
 scalar_t__ ad193x_has_adc (struct ad193x_priv*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 struct ad193x_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int ad193x_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
          unsigned int rx_mask, int slots, int width)
{
 struct ad193x_priv *ad193x = snd_soc_component_get_drvdata(dai->component);
 unsigned int channels;

 switch (slots) {
 case 2:
  channels = AD193X_2_CHANNELS;
  break;
 case 4:
  channels = AD193X_4_CHANNELS;
  break;
 case 8:
  channels = AD193X_8_CHANNELS;
  break;
 case 16:
  channels = AD193X_16_CHANNELS;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(ad193x->regmap, AD193X_DAC_CTRL1,
  AD193X_DAC_CHAN_MASK, channels << AD193X_DAC_CHAN_SHFT);
 if (ad193x_has_adc(ad193x))
  regmap_update_bits(ad193x->regmap, AD193X_ADC_CTRL2,
       AD193X_ADC_CHAN_MASK,
       channels << AD193X_ADC_CHAN_SHFT);

 return 0;
}
