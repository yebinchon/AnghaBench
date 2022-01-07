
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct pm8916_wcd_analog_priv {struct snd_soc_jack* jack; } ;


 struct pm8916_wcd_analog_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pm8916_wcd_analog_set_jack(struct snd_soc_component *component,
          struct snd_soc_jack *jack,
          void *data)
{
 struct pm8916_wcd_analog_priv *wcd = snd_soc_component_get_drvdata(component);

 wcd->jack = jack;

 return 0;
}
