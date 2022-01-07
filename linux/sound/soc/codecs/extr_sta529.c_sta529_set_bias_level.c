
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta529 {int regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int FFX_CLK_DIS ;
 int FFX_CLK_ENB ;
 int FFX_CLK_MSK ;
 int FFX_MASK ;
 int FFX_OFF ;
 int POWER_CNTLMSAK ;
 int POWER_STDBY ;
 int POWER_UP ;




 int STA529_FFXCFG0 ;
 int STA529_MISC ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct sta529* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int sta529_set_bias_level(struct snd_soc_component *component, enum
  snd_soc_bias_level level)
{
 struct sta529 *sta529 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
 case 129:
  snd_soc_component_update_bits(component, STA529_FFXCFG0, POWER_CNTLMSAK,
    POWER_UP);
  snd_soc_component_update_bits(component, STA529_MISC, FFX_CLK_MSK,
    FFX_CLK_ENB);
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131)
   regcache_sync(sta529->regmap);
  snd_soc_component_update_bits(component, STA529_FFXCFG0,
     POWER_CNTLMSAK, POWER_STDBY);

  snd_soc_component_update_bits(component, STA529_FFXCFG0, FFX_MASK,
    FFX_OFF);
  snd_soc_component_update_bits(component, STA529_MISC, FFX_CLK_MSK,
    FFX_CLK_DIS);
  break;
 case 131:
  break;
 }

 return 0;

}
