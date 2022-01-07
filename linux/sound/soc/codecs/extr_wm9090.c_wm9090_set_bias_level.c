
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm9090_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM9090_ANTIPOP2 ;
 int WM9090_BIAS_ENA ;
 int WM9090_POWER_MANAGEMENT_1 ;
 int WM9090_VMID_ENA ;
 int WM9090_VMID_RES_MASK ;
 int WM9090_VMID_RES_SHIFT ;
 int msleep (int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm9090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm9090_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm9090_priv *wm9090 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;

 case 129:
  snd_soc_component_update_bits(component, WM9090_ANTIPOP2, WM9090_VMID_ENA,
        WM9090_VMID_ENA);
  snd_soc_component_update_bits(component, WM9090_POWER_MANAGEMENT_1,
        WM9090_BIAS_ENA |
        WM9090_VMID_RES_MASK,
        WM9090_BIAS_ENA |
        1 << WM9090_VMID_RES_SHIFT);
  msleep(1);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {

   regcache_sync(wm9090->regmap);
  }





  snd_soc_component_update_bits(component, WM9090_POWER_MANAGEMENT_1,
        WM9090_BIAS_ENA | WM9090_VMID_RES_MASK, 0);
  snd_soc_component_update_bits(component, WM9090_ANTIPOP2,
        WM9090_VMID_ENA, 0);
  break;

 case 131:
  break;
 }

 return 0;
}
