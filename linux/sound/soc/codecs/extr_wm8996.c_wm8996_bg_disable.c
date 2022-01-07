
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8996_priv {int bg_ena; } ;
struct snd_soc_component {int dummy; } ;


 int WM8996_BG_ENA ;
 int WM8996_POWER_MANAGEMENT_1 ;
 struct wm8996_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void wm8996_bg_disable(struct snd_soc_component *component)
{
 struct wm8996_priv *wm8996 = snd_soc_component_get_drvdata(component);

 wm8996->bg_ena--;
 if (!wm8996->bg_ena)
  snd_soc_component_update_bits(component, WM8996_POWER_MANAGEMENT_1,
        WM8996_BG_ENA, 0);
}
