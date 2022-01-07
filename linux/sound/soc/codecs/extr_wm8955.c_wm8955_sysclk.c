
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int EINVAL ;


 int WM8955_CLOCKING_PLL ;
 int WM8955_DIGENB ;
 int WM8955_PLLEN ;
 int WM8955_PLL_RB ;
 int WM8955_POWER_MANAGEMENT_1 ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wm8955_configure_clocking (struct snd_soc_component*) ;

__attribute__((used)) static int wm8955_sysclk(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 int ret = 0;




 snd_soc_component_update_bits(component, WM8955_POWER_MANAGEMENT_1,
       WM8955_DIGENB, 0);
 snd_soc_component_update_bits(component, WM8955_CLOCKING_PLL,
       WM8955_PLL_RB | WM8955_PLLEN, 0);

 switch (event) {
 case 129:
  break;
 case 128:
  ret = wm8955_configure_clocking(component);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
