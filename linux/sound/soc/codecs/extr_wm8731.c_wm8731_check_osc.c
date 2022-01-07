
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8731_priv {scalar_t__ sysclk_type; } ;
struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;


 scalar_t__ WM8731_SYSCLK_XTAL ;
 struct wm8731_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm8731_check_osc(struct snd_soc_dapm_widget *source,
       struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 struct wm8731_priv *wm8731 = snd_soc_component_get_drvdata(component);

 return wm8731->sysclk_type == WM8731_SYSCLK_XTAL;
}
