
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct pm8916_wcd_analog_priv {int micbias_mv; } ;


 int CDC_A_MICB_1_CTL ;
 int CDC_A_MICB_1_VAL ;
 int MICB_1_CTL_EXT_PRECHARG_EN_ENABLE ;
 int MICB_1_CTL_EXT_PRECHARG_EN_MASK ;
 int MICB_1_CTL_INT_PRECHARG_BYP_EXT_PRECHRG_SEL ;
 int MICB_1_CTL_INT_PRECHARG_BYP_MASK ;
 int MICB_1_VAL_MICB_OUT_VAL_MASK ;
 int MICB_VOLTAGE_REGVAL (int) ;
 int msleep (int) ;
 struct pm8916_wcd_analog_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static void pm8916_wcd_analog_micbias_enable(struct snd_soc_component *component)
{
 struct pm8916_wcd_analog_priv *wcd = snd_soc_component_get_drvdata(component);

 snd_soc_component_update_bits(component, CDC_A_MICB_1_CTL,
       MICB_1_CTL_EXT_PRECHARG_EN_MASK |
       MICB_1_CTL_INT_PRECHARG_BYP_MASK,
       MICB_1_CTL_INT_PRECHARG_BYP_EXT_PRECHRG_SEL
       | MICB_1_CTL_EXT_PRECHARG_EN_ENABLE);

 if (wcd->micbias_mv) {
  snd_soc_component_update_bits(component, CDC_A_MICB_1_VAL,
        MICB_1_VAL_MICB_OUT_VAL_MASK,
        MICB_VOLTAGE_REGVAL(wcd->micbias_mv));




  if (wcd->micbias_mv >= 2700)
   msleep(50);
 }

 snd_soc_component_update_bits(component, CDC_A_MICB_1_CTL,
       MICB_1_CTL_EXT_PRECHARG_EN_MASK |
       MICB_1_CTL_INT_PRECHARG_BYP_MASK, 0);

}
