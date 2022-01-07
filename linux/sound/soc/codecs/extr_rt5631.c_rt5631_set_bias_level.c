
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5631_priv {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int RT5631_PWR_FAST_VREF_CTRL ;
 int RT5631_PWR_MAIN_BIAS ;
 int RT5631_PWR_MANAG_ADD1 ;
 int RT5631_PWR_MANAG_ADD2 ;
 int RT5631_PWR_MANAG_ADD3 ;
 int RT5631_PWR_MANAG_ADD4 ;
 int RT5631_PWR_MICBIAS1_VOL ;
 int RT5631_PWR_MICBIAS2_VOL ;
 int RT5631_PWR_VREF ;




 int msleep (int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct rt5631_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int rt5631_set_bias_level(struct snd_soc_component *component,
   enum snd_soc_bias_level level)
{
 struct rt5631_priv *rt5631 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
 case 129:
  snd_soc_component_update_bits(component, RT5631_PWR_MANAG_ADD2,
   RT5631_PWR_MICBIAS1_VOL | RT5631_PWR_MICBIAS2_VOL,
   RT5631_PWR_MICBIAS1_VOL | RT5631_PWR_MICBIAS2_VOL);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   snd_soc_component_update_bits(component, RT5631_PWR_MANAG_ADD3,
    RT5631_PWR_VREF | RT5631_PWR_MAIN_BIAS,
    RT5631_PWR_VREF | RT5631_PWR_MAIN_BIAS);
   msleep(80);
   snd_soc_component_update_bits(component, RT5631_PWR_MANAG_ADD3,
    RT5631_PWR_FAST_VREF_CTRL,
    RT5631_PWR_FAST_VREF_CTRL);
   regcache_cache_only(rt5631->regmap, 0);
   regcache_sync(rt5631->regmap);
  }
  break;

 case 131:
  snd_soc_component_write(component, RT5631_PWR_MANAG_ADD1, 0x0000);
  snd_soc_component_write(component, RT5631_PWR_MANAG_ADD2, 0x0000);
  snd_soc_component_write(component, RT5631_PWR_MANAG_ADD3, 0x0000);
  snd_soc_component_write(component, RT5631_PWR_MANAG_ADD4, 0x0000);
  break;

 default:
  break;
 }

 return 0;
}
