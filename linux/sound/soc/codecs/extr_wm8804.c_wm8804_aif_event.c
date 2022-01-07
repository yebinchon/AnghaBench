
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8804_priv {int aif_pwr; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int WM8804_PWRDN ;
 struct wm8804_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm8804_aif_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct wm8804_priv *wm8804 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:

  if (!wm8804->aif_pwr)
   snd_soc_component_update_bits(component, WM8804_PWRDN, 0x10, 0x0);
  wm8804->aif_pwr++;
  break;
 case 129:

  wm8804->aif_pwr--;
  if (!wm8804->aif_pwr)
   snd_soc_component_update_bits(component, WM8804_PWRDN, 0x10, 0x10);
  break;
 }

 return 0;
}
