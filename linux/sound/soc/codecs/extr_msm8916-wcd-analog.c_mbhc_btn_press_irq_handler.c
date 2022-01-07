
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
struct pm8916_wcd_analog_priv {int jack; int detect_accessory_type; struct snd_soc_component* component; } ;
typedef int irqreturn_t ;


 int CDC_A_MBHC_RESULT_1 ;
 int CDC_A_MBHC_RESULT_1_BTN_RESULT_MASK ;
 int IRQ_HANDLED ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_BTN_4 ;
 int btn_mask ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_jack_report (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t mbhc_btn_press_irq_handler(int irq, void *arg)
{
 struct pm8916_wcd_analog_priv *priv = arg;
 struct snd_soc_component *component = priv->component;
 u32 btn_result;

 btn_result = snd_soc_component_read32(component, CDC_A_MBHC_RESULT_1) &
      CDC_A_MBHC_RESULT_1_BTN_RESULT_MASK;

 switch (btn_result) {
 case 0xf:
  snd_soc_jack_report(priv->jack, SND_JACK_BTN_4, btn_mask);
  break;
 case 0x7:
  snd_soc_jack_report(priv->jack, SND_JACK_BTN_3, btn_mask);
  break;
 case 0x3:
  snd_soc_jack_report(priv->jack, SND_JACK_BTN_2, btn_mask);
  break;
 case 0x1:
  snd_soc_jack_report(priv->jack, SND_JACK_BTN_1, btn_mask);
  break;
 case 0x0:

  if (!priv->detect_accessory_type)
   snd_soc_jack_report(priv->jack,
         SND_JACK_BTN_0, btn_mask);
  break;
 default:
  dev_err(component->dev,
   "Unexpected button press result (%x)", btn_result);
  break;
 }

 return IRQ_HANDLED;
}
