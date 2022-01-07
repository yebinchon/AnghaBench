
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_priv {int hsl_enabled; int hsr_enabled; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int headset_ramp (struct snd_soc_component*,int) ;
 struct twl4030_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int headsetlpga_event(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct twl4030_priv *twl4030 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:

  if (!twl4030->hsr_enabled)
   headset_ramp(component, 1);

  twl4030->hsl_enabled = 1;
  break;
 case 129:

  if (!twl4030->hsr_enabled)
   headset_ramp(component, 0);

  twl4030->hsl_enabled = 0;
  break;
 }
 return 0;
}
