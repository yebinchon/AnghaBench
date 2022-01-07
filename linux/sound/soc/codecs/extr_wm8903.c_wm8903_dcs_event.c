
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8903_priv {int dcs_pending; } ;
struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int WM8903_DC_SERVO_0 ;
 struct wm8903_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm8903_dcs_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm8903_priv *wm8903 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 129:
  wm8903->dcs_pending |= 1 << w->shift;
  break;
 case 128:
  snd_soc_component_update_bits(component, WM8903_DC_SERVO_0,
        1 << w->shift, 0);
  break;
 }

 return 0;
}
