
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct pm8916_wcd_analog_priv {int mbhc_btn0_released; int detect_accessory_type; int jack; struct snd_soc_component* component; } ;
typedef int irqreturn_t ;


 int CDC_A_MBHC_DET_CTL_1 ;
 int CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_MASK ;
 int CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_SHIFT ;
 int CDC_A_MICB_2_EN ;
 int CDC_A_MICB_2_EN_ENABLE ;
 int IRQ_HANDLED ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_HEADSET ;
 int hs_jack_mask ;
 int pm8916_mbhc_configure_bias (struct pm8916_wcd_analog_priv*,int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_jack_report (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t pm8916_mbhc_switch_irq_handler(int irq, void *arg)
{
 struct pm8916_wcd_analog_priv *priv = arg;
 struct snd_soc_component *component = priv->component;
 bool ins = 0;

 if (snd_soc_component_read32(component, CDC_A_MBHC_DET_CTL_1) &
    CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_MASK)
  ins = 1;


 snd_soc_component_update_bits(component, CDC_A_MBHC_DET_CTL_1,
       CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_MASK,
       (!ins << CDC_A_MBHC_DET_CTL_MECH_DET_TYPE_SHIFT));


 if (ins) {
  bool micbias_enabled = 0;

  if (snd_soc_component_read32(component, CDC_A_MICB_2_EN) &
    CDC_A_MICB_2_EN_ENABLE)
   micbias_enabled = 1;

  pm8916_mbhc_configure_bias(priv, micbias_enabled);







  if (priv->mbhc_btn0_released)
   snd_soc_jack_report(priv->jack,
         SND_JACK_HEADSET, hs_jack_mask);
  else
   snd_soc_jack_report(priv->jack,
         SND_JACK_HEADPHONE, hs_jack_mask);

  priv->detect_accessory_type = 0;

 } else {
  snd_soc_jack_report(priv->jack, 0, hs_jack_mask);
  priv->detect_accessory_type = 1;
  priv->mbhc_btn0_released = 0;
 }

 return IRQ_HANDLED;
}
