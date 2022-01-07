
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5616_priv {int mclk; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int IS_ERR (int ) ;
 int RT5616_D_GATE_EN ;
 int RT5616_D_MISC ;
 int RT5616_PWR_ANLG1 ;
 int RT5616_PWR_ANLG2 ;
 int RT5616_PWR_BG ;
 int RT5616_PWR_DIG1 ;
 int RT5616_PWR_DIG2 ;
 int RT5616_PWR_FV1 ;
 int RT5616_PWR_FV2 ;
 int RT5616_PWR_MB ;
 int RT5616_PWR_MIXER ;
 int RT5616_PWR_VOL ;
 int RT5616_PWR_VREF1 ;
 int RT5616_PWR_VREF2 ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int mdelay (int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct rt5616_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int rt5616_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct rt5616_priv *rt5616 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {

 case 130:
  break;

 case 129:







  if (IS_ERR(rt5616->mclk))
   break;

  if (snd_soc_component_get_bias_level(component) == 130) {
   clk_disable_unprepare(rt5616->mclk);
  } else {
   ret = clk_prepare_enable(rt5616->mclk);
   if (ret)
    return ret;
  }
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   snd_soc_component_update_bits(component, RT5616_PWR_ANLG1,
         RT5616_PWR_VREF1 | RT5616_PWR_MB |
         RT5616_PWR_BG | RT5616_PWR_VREF2,
         RT5616_PWR_VREF1 | RT5616_PWR_MB |
         RT5616_PWR_BG | RT5616_PWR_VREF2);
   mdelay(10);
   snd_soc_component_update_bits(component, RT5616_PWR_ANLG1,
         RT5616_PWR_FV1 | RT5616_PWR_FV2,
         RT5616_PWR_FV1 | RT5616_PWR_FV2);
   snd_soc_component_update_bits(component, RT5616_D_MISC,
         RT5616_D_GATE_EN,
         RT5616_D_GATE_EN);
  }
  break;

 case 131:
  snd_soc_component_update_bits(component, RT5616_D_MISC, RT5616_D_GATE_EN, 0);
  snd_soc_component_write(component, RT5616_PWR_DIG1, 0x0000);
  snd_soc_component_write(component, RT5616_PWR_DIG2, 0x0000);
  snd_soc_component_write(component, RT5616_PWR_VOL, 0x0000);
  snd_soc_component_write(component, RT5616_PWR_MIXER, 0x0000);
  snd_soc_component_write(component, RT5616_PWR_ANLG1, 0x0000);
  snd_soc_component_write(component, RT5616_PWR_ANLG2, 0x0000);
  break;

 default:
  break;
 }

 return 0;
}
