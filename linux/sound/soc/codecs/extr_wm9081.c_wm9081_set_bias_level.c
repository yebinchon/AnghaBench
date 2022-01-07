
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm9081_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM9081_ANTI_POP_CONTROL ;
 int WM9081_BIAS_CONTROL_1 ;
 int WM9081_BIAS_ENA ;
 int WM9081_BIAS_SRC ;
 int WM9081_LINEOUT_DISCH ;
 int WM9081_STBY_BIAS_ENA ;
 int WM9081_VMID_CONTROL ;
 int WM9081_VMID_RAMP ;
 int WM9081_VMID_SEL_MASK ;
 int mdelay (int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm9081_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm9081_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm9081_priv *wm9081 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;

 case 129:

  snd_soc_component_update_bits(component, WM9081_VMID_CONTROL,
        WM9081_VMID_SEL_MASK, 0x2);


  snd_soc_component_update_bits(component, WM9081_BIAS_CONTROL_1,
        WM9081_STBY_BIAS_ENA, 0);
  break;

 case 128:

  if (snd_soc_component_get_bias_level(component) == 131) {
   regcache_cache_only(wm9081->regmap, 0);
   regcache_sync(wm9081->regmap);


   snd_soc_component_update_bits(component, WM9081_ANTI_POP_CONTROL,
         WM9081_LINEOUT_DISCH, 0);


   snd_soc_component_update_bits(component, WM9081_BIAS_CONTROL_1,
         WM9081_BIAS_SRC | WM9081_BIAS_ENA,
         WM9081_BIAS_SRC | WM9081_BIAS_ENA);


   snd_soc_component_update_bits(component, WM9081_VMID_CONTROL,
         WM9081_VMID_RAMP |
         WM9081_VMID_SEL_MASK,
         WM9081_VMID_RAMP | 0x6);

   mdelay(100);


   snd_soc_component_update_bits(component, WM9081_VMID_CONTROL,
         WM9081_VMID_RAMP, 0);


   snd_soc_component_update_bits(component, WM9081_BIAS_CONTROL_1,
         WM9081_BIAS_SRC, 0);
  }


  snd_soc_component_update_bits(component, WM9081_VMID_CONTROL,
        WM9081_VMID_SEL_MASK, 0x04);


  snd_soc_component_update_bits(component, WM9081_BIAS_CONTROL_1,
        WM9081_STBY_BIAS_ENA,
        WM9081_STBY_BIAS_ENA);
  break;

 case 131:

  snd_soc_component_update_bits(component, WM9081_BIAS_CONTROL_1,
        WM9081_BIAS_SRC | WM9081_BIAS_ENA,
        WM9081_BIAS_SRC);


  snd_soc_component_update_bits(component, WM9081_VMID_CONTROL,
        WM9081_VMID_RAMP | WM9081_VMID_SEL_MASK,
        WM9081_VMID_RAMP);


  snd_soc_component_update_bits(component, WM9081_ANTI_POP_CONTROL,
        WM9081_LINEOUT_DISCH,
        WM9081_LINEOUT_DISCH);

  regcache_cache_only(wm9081->regmap, 1);
  break;
 }

 return 0;
}
