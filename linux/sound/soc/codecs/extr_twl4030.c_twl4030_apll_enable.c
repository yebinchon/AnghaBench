
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_priv {int apll_enabled; } ;
struct snd_soc_component {int dummy; } ;


 int TWL4030_AUDIO_RES_APLL ;
 struct twl4030_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int twl4030_audio_disable_resource (int ) ;
 int twl4030_audio_enable_resource (int ) ;

__attribute__((used)) static void twl4030_apll_enable(struct snd_soc_component *component, int enable)
{
 struct twl4030_priv *twl4030 = snd_soc_component_get_drvdata(component);

 if (enable) {
  twl4030->apll_enabled++;
  if (twl4030->apll_enabled == 1)
   twl4030_audio_enable_resource(
       TWL4030_AUDIO_RES_APLL);
 } else {
  twl4030->apll_enabled--;
  if (!twl4030->apll_enabled)
   twl4030_audio_disable_resource(
       TWL4030_AUDIO_RES_APLL);
 }
}
