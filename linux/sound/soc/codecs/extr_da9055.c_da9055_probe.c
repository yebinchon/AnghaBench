
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct da9055_priv {TYPE_1__* pdata; } ;
struct TYPE_2__ {int micbias; scalar_t__ micbias_source; } ;


 int DA9055_ADC_L_CTRL ;
 int DA9055_ADC_R_CTRL ;
 int DA9055_AUX_L_CTRL ;
 int DA9055_AUX_R_CTRL ;
 int DA9055_DAC_L_CTRL ;
 int DA9055_DAC_R_CTRL ;
 int DA9055_GAIN_RAMPING_EN ;
 int DA9055_HP_L_CTRL ;
 int DA9055_HP_R_CTRL ;
 int DA9055_LINE_CTRL ;
 int DA9055_MICBIAS2_EN ;




 int DA9055_MICBIAS_LEVEL_MASK ;
 int DA9055_MIC_CONFIG ;
 int DA9055_MIXIN_L_CTRL ;
 int DA9055_MIXIN_L_MIX_EN ;
 int DA9055_MIXIN_R_CTRL ;
 int DA9055_MIXIN_R_MIX_EN ;
 int DA9055_MIXIN_R_SELECT ;
 int DA9055_MIXOUT_L_CTRL ;
 int DA9055_MIXOUT_L_MIX_EN ;
 int DA9055_MIXOUT_R_CTRL ;
 int DA9055_MIXOUT_R_MIX_EN ;
 int DA9055_PLL_CTRL ;
 int DA9055_PLL_INDIV_10_20_MHZ ;
 struct da9055_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int da9055_probe(struct snd_soc_component *component)
{
 struct da9055_priv *da9055 = snd_soc_component_get_drvdata(component);


 snd_soc_component_update_bits(component, DA9055_AUX_L_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_AUX_R_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_MIXIN_L_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_MIXIN_R_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_ADC_L_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_ADC_R_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_DAC_L_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_DAC_R_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_HP_L_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_HP_R_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_LINE_CTRL,
       DA9055_GAIN_RAMPING_EN, DA9055_GAIN_RAMPING_EN);
 snd_soc_component_update_bits(component, DA9055_MIXIN_L_CTRL,
       DA9055_MIXIN_L_MIX_EN, DA9055_MIXIN_L_MIX_EN);
 snd_soc_component_update_bits(component, DA9055_MIXIN_R_CTRL,
       DA9055_MIXIN_R_MIX_EN, DA9055_MIXIN_R_MIX_EN);

 snd_soc_component_update_bits(component, DA9055_MIXOUT_L_CTRL,
       DA9055_MIXOUT_L_MIX_EN, DA9055_MIXOUT_L_MIX_EN);
 snd_soc_component_update_bits(component, DA9055_MIXOUT_R_CTRL,
       DA9055_MIXOUT_R_MIX_EN, DA9055_MIXOUT_R_MIX_EN);


 snd_soc_component_write(component, DA9055_PLL_CTRL, DA9055_PLL_INDIV_10_20_MHZ);


 if (da9055->pdata) {

  if (da9055->pdata->micbias_source) {
   snd_soc_component_update_bits(component, DA9055_MIXIN_R_SELECT,
         DA9055_MICBIAS2_EN,
         DA9055_MICBIAS2_EN);
  } else {
   snd_soc_component_update_bits(component, DA9055_MIXIN_R_SELECT,
         DA9055_MICBIAS2_EN, 0);
  }

  switch (da9055->pdata->micbias) {
  case 128:
  case 129:
  case 130:
  case 131:
   snd_soc_component_update_bits(component, DA9055_MIC_CONFIG,
         DA9055_MICBIAS_LEVEL_MASK,
         (da9055->pdata->micbias) << 4);
   break;
  }
 }
 return 0;
}
