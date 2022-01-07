
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5645_priv {int en_button_func; int jack_detect_work; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int RT5645_DEPOP_M2 ;
 int RT5645_DIG_GATE_CTRL ;
 int RT5645_GEN_CTRL1 ;
 int RT5645_PWR_ANLG1 ;
 int RT5645_PWR_BG ;
 int RT5645_PWR_FV1 ;
 int RT5645_PWR_FV2 ;
 int RT5645_PWR_MB ;
 int RT5645_PWR_VREF1 ;
 int RT5645_PWR_VREF2 ;



 int mdelay (int) ;
 int msecs_to_jiffies (int ) ;
 int msleep (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct rt5645_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int system_power_efficient_wq ;

__attribute__((used)) static int rt5645_set_bias_level(struct snd_soc_component *component,
   enum snd_soc_bias_level level)
{
 struct rt5645_priv *rt5645 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 129:
  if (128 == snd_soc_component_get_bias_level(component)) {
   snd_soc_component_update_bits(component, RT5645_PWR_ANLG1,
    RT5645_PWR_VREF1 | RT5645_PWR_MB |
    RT5645_PWR_BG | RT5645_PWR_VREF2,
    RT5645_PWR_VREF1 | RT5645_PWR_MB |
    RT5645_PWR_BG | RT5645_PWR_VREF2);
   mdelay(10);
   snd_soc_component_update_bits(component, RT5645_PWR_ANLG1,
    RT5645_PWR_FV1 | RT5645_PWR_FV2,
    RT5645_PWR_FV1 | RT5645_PWR_FV2);
   snd_soc_component_update_bits(component, RT5645_GEN_CTRL1,
    RT5645_DIG_GATE_CTRL, RT5645_DIG_GATE_CTRL);
  }
  break;

 case 128:
  snd_soc_component_update_bits(component, RT5645_PWR_ANLG1,
   RT5645_PWR_VREF1 | RT5645_PWR_MB |
   RT5645_PWR_BG | RT5645_PWR_VREF2,
   RT5645_PWR_VREF1 | RT5645_PWR_MB |
   RT5645_PWR_BG | RT5645_PWR_VREF2);
  mdelay(10);
  snd_soc_component_update_bits(component, RT5645_PWR_ANLG1,
   RT5645_PWR_FV1 | RT5645_PWR_FV2,
   RT5645_PWR_FV1 | RT5645_PWR_FV2);
  if (snd_soc_component_get_bias_level(component) == 130) {
   snd_soc_component_write(component, RT5645_DEPOP_M2, 0x1140);
   msleep(40);
   if (rt5645->en_button_func)
    queue_delayed_work(system_power_efficient_wq,
     &rt5645->jack_detect_work,
     msecs_to_jiffies(0));
  }
  break;

 case 130:
  snd_soc_component_write(component, RT5645_DEPOP_M2, 0x1100);
  if (!rt5645->en_button_func)
   snd_soc_component_update_bits(component, RT5645_GEN_CTRL1,
     RT5645_DIG_GATE_CTRL, 0);
  snd_soc_component_update_bits(component, RT5645_PWR_ANLG1,
    RT5645_PWR_VREF1 | RT5645_PWR_MB |
    RT5645_PWR_BG | RT5645_PWR_VREF2 |
    RT5645_PWR_FV1 | RT5645_PWR_FV2, 0x0);
  break;

 default:
  break;
 }

 return 0;
}
