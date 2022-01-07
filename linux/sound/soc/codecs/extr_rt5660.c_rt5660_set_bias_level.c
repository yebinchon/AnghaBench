
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5660_priv {int mclk; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int IS_ERR (int ) ;
 int RT5660_DIG_GATE_CTRL ;
 int RT5660_GEN_CTRL1 ;
 int RT5660_PWR_ANLG1 ;
 int RT5660_PWR_BG ;
 int RT5660_PWR_FV1 ;
 int RT5660_PWR_FV2 ;
 int RT5660_PWR_MB ;
 int RT5660_PWR_VREF1 ;
 int RT5660_PWR_VREF2 ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct rt5660_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt5660_set_bias_level(struct snd_soc_component *component,
   enum snd_soc_bias_level level)
{
 struct rt5660_priv *rt5660 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;

 case 129:
  snd_soc_component_update_bits(component, RT5660_GEN_CTRL1,
   RT5660_DIG_GATE_CTRL, RT5660_DIG_GATE_CTRL);

  if (IS_ERR(rt5660->mclk))
   break;

  if (snd_soc_component_get_bias_level(component) == 130) {
   clk_disable_unprepare(rt5660->mclk);
  } else {
   ret = clk_prepare_enable(rt5660->mclk);
   if (ret)
    return ret;
  }
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   snd_soc_component_update_bits(component, RT5660_PWR_ANLG1,
    RT5660_PWR_VREF1 | RT5660_PWR_MB |
    RT5660_PWR_BG | RT5660_PWR_VREF2,
    RT5660_PWR_VREF1 | RT5660_PWR_MB |
    RT5660_PWR_BG | RT5660_PWR_VREF2);
   usleep_range(10000, 15000);
   snd_soc_component_update_bits(component, RT5660_PWR_ANLG1,
    RT5660_PWR_FV1 | RT5660_PWR_FV2,
    RT5660_PWR_FV1 | RT5660_PWR_FV2);
  }
  break;

 case 131:
  snd_soc_component_update_bits(component, RT5660_GEN_CTRL1,
   RT5660_DIG_GATE_CTRL, 0);
  break;

 default:
  break;
 }

 return 0;
}
