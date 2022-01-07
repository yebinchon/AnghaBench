
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adav80x {int regmap; } ;


 int ADAV80X_ADC_CTRL1 ;
 unsigned int ADAV80X_ADC_CTRL1_MODULATOR_128FS ;
 unsigned int ADAV80X_ADC_CTRL1_MODULATOR_64FS ;
 int ADAV80X_ADC_CTRL1_MODULATOR_MASK ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adav80x_set_adc_clock(struct snd_soc_component *component,
  unsigned int sample_rate)
{
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);
 unsigned int val;

 if (sample_rate <= 48000)
  val = ADAV80X_ADC_CTRL1_MODULATOR_128FS;
 else
  val = ADAV80X_ADC_CTRL1_MODULATOR_64FS;

 regmap_update_bits(adav80x->regmap, ADAV80X_ADC_CTRL1,
  ADAV80X_ADC_CTRL1_MODULATOR_MASK, val);

 return 0;
}
