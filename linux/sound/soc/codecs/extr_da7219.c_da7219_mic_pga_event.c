
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct da7219_priv {int micbias_on_event; int mic_pga_delay; } ;



 int msleep (int ) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int da7219_mic_pga_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (da7219->micbias_on_event) {




   da7219->micbias_on_event = 0;
   msleep(da7219->mic_pga_delay);
  }
  break;
 default:
  break;
 }

 return 0;
}
