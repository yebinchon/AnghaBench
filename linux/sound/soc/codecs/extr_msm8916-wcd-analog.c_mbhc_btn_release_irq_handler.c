
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dummy; } ;
struct pm8916_wcd_analog_priv {int mbhc_btn0_released; int jack; struct snd_soc_component* component; scalar_t__ detect_accessory_type; } ;
typedef int irqreturn_t ;


 int CDC_A_MBHC_RESULT_1 ;
 int CDC_A_MBHC_RESULT_1_BTN_RESULT_MASK ;
 int IRQ_HANDLED ;
 int btn_mask ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_jack_report (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t mbhc_btn_release_irq_handler(int irq, void *arg)
{
 struct pm8916_wcd_analog_priv *priv = arg;

 if (priv->detect_accessory_type) {
  struct snd_soc_component *component = priv->component;
  u32 val = snd_soc_component_read32(component, CDC_A_MBHC_RESULT_1);


  if ((val != -1) && !(val & CDC_A_MBHC_RESULT_1_BTN_RESULT_MASK))
   priv->mbhc_btn0_released = 1;

 } else {
  snd_soc_jack_report(priv->jack, 0, btn_mask);
 }

 return IRQ_HANDLED;
}
