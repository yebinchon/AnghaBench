
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8995_priv {scalar_t__* aifclk; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 int WM8995_CLOCKING_1 ;
 int WM8995_SYSCLK_SRC ;
 int WM8995_SYSCLK_SRC_MASK ;
 int configure_aif_clock (struct snd_soc_component*,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8995_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

__attribute__((used)) static int configure_clock(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct wm8995_priv *wm8995;
 int change, new;

 wm8995 = snd_soc_component_get_drvdata(component);


 configure_aif_clock(component, 0);
 configure_aif_clock(component, 1);
 if (wm8995->aifclk[0] == wm8995->aifclk[1])
  return 0;

 if (wm8995->aifclk[0] < wm8995->aifclk[1])
  new = WM8995_SYSCLK_SRC;
 else
  new = 0;

 change = snd_soc_component_update_bits(component, WM8995_CLOCKING_1,
         WM8995_SYSCLK_SRC_MASK, new);
 if (!change)
  return 0;

 snd_soc_dapm_sync(dapm);

 return 0;
}
