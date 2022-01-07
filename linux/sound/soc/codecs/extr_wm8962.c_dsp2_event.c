
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {int dsp2_ena; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;


 int WARN (int,char*,int) ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wm8962_dsp2_start (struct snd_soc_component*) ;
 int wm8962_dsp2_stop (struct snd_soc_component*) ;

__attribute__((used)) static int dsp2_event(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 129:
  if (wm8962->dsp2_ena)
   wm8962_dsp2_start(component);
  break;

 case 128:
  if (wm8962->dsp2_ena)
   wm8962_dsp2_stop(component);
  break;

 default:
  WARN(1, "Invalid event %d\n", event);
  return -EINVAL;
 }

 return 0;
}
