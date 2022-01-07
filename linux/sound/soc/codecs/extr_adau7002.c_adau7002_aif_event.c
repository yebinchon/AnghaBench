
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct adau7002_priv {int wakeup_delay; } ;



 int msleep (int ) ;
 struct adau7002_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int adau7002_aif_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
   snd_soc_dapm_to_component(w->dapm);
 struct adau7002_priv *adau7002 =
   snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (adau7002->wakeup_delay)
   msleep(adau7002->wakeup_delay);
  break;
 }

 return 0;
}
