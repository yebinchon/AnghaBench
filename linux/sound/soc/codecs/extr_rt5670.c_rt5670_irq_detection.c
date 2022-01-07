
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_jack_gpio {int debounce_time; } ;
struct snd_soc_jack {int status; } ;
struct TYPE_6__ {int jd_mode; } ;
struct rt5670_priv {int jack_type; TYPE_2__* component; TYPE_1__ pdata; struct snd_soc_jack* jack; struct snd_soc_jack_gpio hp_gpio; } ;
struct TYPE_7__ {int dev; } ;


 int RT5670_A_JD_CTRL1 ;
 int RT5670_INT_IRQ_ST ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_HEADSET ;
 int dev_err (int ,char*,int) ;
 int rt5670_button_detect (TYPE_2__*) ;
 int rt5670_headset_detect (TYPE_2__*,int) ;
 int snd_soc_component_read32 (TYPE_2__*,int ) ;
 int snd_soc_component_update_bits (TYPE_2__*,int ,int,int) ;

__attribute__((used)) static int rt5670_irq_detection(void *data)
{
 struct rt5670_priv *rt5670 = (struct rt5670_priv *)data;
 struct snd_soc_jack_gpio *gpio = &rt5670->hp_gpio;
 struct snd_soc_jack *jack = rt5670->jack;
 int val, btn_type, report = jack->status;

 if (rt5670->pdata.jd_mode == 1)
  val = snd_soc_component_read32(rt5670->component, RT5670_A_JD_CTRL1) & 0x0070;
 else
  val = snd_soc_component_read32(rt5670->component, RT5670_A_JD_CTRL1) & 0x0020;

 switch (val) {

 case 0x30:
 case 0x0:
  if (rt5670->jack_type == 0) {
   report = rt5670_headset_detect(rt5670->component, 1);

   gpio->debounce_time = 25;
   break;
  }
  btn_type = 0;
  if (snd_soc_component_read32(rt5670->component, RT5670_INT_IRQ_ST) & 0x4) {

   report = SND_JACK_HEADSET;
   btn_type = rt5670_button_detect(rt5670->component);
   switch (btn_type) {
   case 0x2000:
    report |= SND_JACK_BTN_1;
    break;
   case 0x0400:
    report |= SND_JACK_BTN_0;
    break;
   case 0x0080:
    report |= SND_JACK_BTN_2;
    break;
   default:
    dev_err(rt5670->component->dev,
     "Unexpected button code 0x%04x\n",
     btn_type);
    break;
   }
  }
  if (btn_type == 0)
   report = rt5670->jack_type;

  break;

 case 0x70:
 case 0x10:
 case 0x20:
  report = 0;
  snd_soc_component_update_bits(rt5670->component, RT5670_INT_IRQ_ST, 0x1, 0x0);
  rt5670_headset_detect(rt5670->component, 0);
  gpio->debounce_time = 150;
  break;
 default:
  break;
 }

 return report;
}
