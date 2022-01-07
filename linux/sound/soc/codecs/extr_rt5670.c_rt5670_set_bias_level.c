
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int jd_mode; } ;
struct rt5670_priv {TYPE_1__ pdata; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int RT5670_CHARGE_PUMP ;
 int RT5670_DIG_MISC ;
 int RT5670_LDO_SEL_MASK ;
 int RT5670_OSW_L_DIS ;
 int RT5670_OSW_L_MASK ;
 int RT5670_OSW_R_DIS ;
 int RT5670_OSW_R_MASK ;
 int RT5670_PWR_ANLG1 ;
 int RT5670_PWR_BG ;
 int RT5670_PWR_FV1 ;
 int RT5670_PWR_FV2 ;
 int RT5670_PWR_MB ;
 int RT5670_PWR_VREF1 ;
 int RT5670_PWR_VREF2 ;



 int mdelay (int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct rt5670_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int rt5670_set_bias_level(struct snd_soc_component *component,
   enum snd_soc_bias_level level)
{
 struct rt5670_priv *rt5670 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 129:
  if (128 == snd_soc_component_get_bias_level(component)) {
   snd_soc_component_update_bits(component, RT5670_PWR_ANLG1,
    RT5670_PWR_VREF1 | RT5670_PWR_MB |
    RT5670_PWR_BG | RT5670_PWR_VREF2,
    RT5670_PWR_VREF1 | RT5670_PWR_MB |
    RT5670_PWR_BG | RT5670_PWR_VREF2);
   mdelay(10);
   snd_soc_component_update_bits(component, RT5670_PWR_ANLG1,
    RT5670_PWR_FV1 | RT5670_PWR_FV2,
    RT5670_PWR_FV1 | RT5670_PWR_FV2);
   snd_soc_component_update_bits(component, RT5670_CHARGE_PUMP,
    RT5670_OSW_L_MASK | RT5670_OSW_R_MASK,
    RT5670_OSW_L_DIS | RT5670_OSW_R_DIS);
   snd_soc_component_update_bits(component, RT5670_DIG_MISC, 0x1, 0x1);
   snd_soc_component_update_bits(component, RT5670_PWR_ANLG1,
    RT5670_LDO_SEL_MASK, 0x5);
  }
  break;
 case 128:
  snd_soc_component_update_bits(component, RT5670_PWR_ANLG1,
    RT5670_PWR_VREF1 | RT5670_PWR_VREF2 |
    RT5670_PWR_FV1 | RT5670_PWR_FV2, 0);
  snd_soc_component_update_bits(component, RT5670_PWR_ANLG1,
    RT5670_LDO_SEL_MASK, 0x3);
  break;
 case 130:
  if (rt5670->pdata.jd_mode)
   snd_soc_component_update_bits(component, RT5670_PWR_ANLG1,
    RT5670_PWR_VREF1 | RT5670_PWR_MB |
    RT5670_PWR_BG | RT5670_PWR_VREF2 |
    RT5670_PWR_FV1 | RT5670_PWR_FV2,
    RT5670_PWR_MB | RT5670_PWR_BG);
  else
   snd_soc_component_update_bits(component, RT5670_PWR_ANLG1,
    RT5670_PWR_VREF1 | RT5670_PWR_MB |
    RT5670_PWR_BG | RT5670_PWR_VREF2 |
    RT5670_PWR_FV1 | RT5670_PWR_FV2, 0);

  snd_soc_component_update_bits(component, RT5670_DIG_MISC, 0x1, 0x0);
  break;

 default:
  break;
 }

 return 0;
}
