
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8904_priv {int sysclk_src; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;





 int WM8904_FLL_CONTROL_1 ;
 int WM8904_FLL_ENA ;
 int WM8904_FLL_OSC_ENA ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int sysclk_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm8904_priv *wm8904 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 129:





  switch (wm8904->sysclk_src) {
  case 128:
   snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_1,
         WM8904_FLL_OSC_ENA,
         WM8904_FLL_OSC_ENA);

   snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_1,
         WM8904_FLL_ENA,
         WM8904_FLL_ENA);
   break;

  default:
   break;
  }
  break;

 case 130:
  snd_soc_component_update_bits(component, WM8904_FLL_CONTROL_1,
        WM8904_FLL_OSC_ENA | WM8904_FLL_ENA, 0);
  break;
 }

 return 0;
}
