
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lineout2_diff; int lineout1_diff; } ;
struct wm8993_priv {int supplies; int regmap; TYPE_1__ pdata; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8993_ANTIPOP1 ;
 int WM8993_ANTIPOP2 ;
 int WM8993_BIAS_ENA ;
 int WM8993_BIAS_SRC ;
 int WM8993_LINEOUT_VMID_BUF_ENA ;
 int WM8993_POWER_MANAGEMENT_1 ;
 int WM8993_POWER_MANAGEMENT_2 ;
 int WM8993_STARTUP_BIAS_ENA ;
 int WM8993_TSHUT_ENA ;
 int WM8993_VMID_BUF_ENA ;
 int WM8993_VMID_RAMP_MASK ;
 int WM8993_VMID_SEL_MASK ;
 int msleep (int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8993_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int wm_hubs_set_bias_level (struct snd_soc_component*,int) ;
 int wm_hubs_vmid_ena (struct snd_soc_component*) ;

__attribute__((used)) static int wm8993_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8993_priv *wm8993 = snd_soc_component_get_drvdata(component);
 int ret;

 wm_hubs_set_bias_level(component, level);

 switch (level) {
 case 130:
 case 129:

  snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_1,
        WM8993_VMID_SEL_MASK, 0x2);
  snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_2,
        WM8993_TSHUT_ENA, WM8993_TSHUT_ENA);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(wm8993->supplies),
          wm8993->supplies);
   if (ret != 0)
    return ret;

   regcache_cache_only(wm8993->regmap, 0);
   regcache_sync(wm8993->regmap);

   wm_hubs_vmid_ena(component);


   snd_soc_component_update_bits(component, WM8993_ANTIPOP2,
         WM8993_STARTUP_BIAS_ENA |
         WM8993_VMID_BUF_ENA |
         WM8993_VMID_RAMP_MASK |
         WM8993_BIAS_SRC,
         WM8993_STARTUP_BIAS_ENA |
         WM8993_VMID_BUF_ENA |
         WM8993_VMID_RAMP_MASK |
         WM8993_BIAS_SRC);



   if (!wm8993->pdata.lineout1_diff ||
       !wm8993->pdata.lineout2_diff)
    snd_soc_component_update_bits(component, WM8993_ANTIPOP1,
       WM8993_LINEOUT_VMID_BUF_ENA,
       WM8993_LINEOUT_VMID_BUF_ENA);


   snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_1,
         WM8993_VMID_SEL_MASK |
         WM8993_BIAS_ENA,
         WM8993_BIAS_ENA | 0x2);
   msleep(32);


   snd_soc_component_update_bits(component, WM8993_ANTIPOP2,
         WM8993_BIAS_SRC |
         WM8993_STARTUP_BIAS_ENA, 0);
  }


  snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_1,
        WM8993_VMID_SEL_MASK, 0x4);

  snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_2,
        WM8993_TSHUT_ENA, 0);
  break;

 case 131:
  snd_soc_component_update_bits(component, WM8993_ANTIPOP1,
        WM8993_LINEOUT_VMID_BUF_ENA, 0);

  snd_soc_component_update_bits(component, WM8993_POWER_MANAGEMENT_1,
        WM8993_VMID_SEL_MASK | WM8993_BIAS_ENA,
        0);

  snd_soc_component_update_bits(component, WM8993_ANTIPOP2,
        WM8993_STARTUP_BIAS_ENA |
        WM8993_VMID_BUF_ENA |
        WM8993_VMID_RAMP_MASK |
        WM8993_BIAS_SRC, 0);

  regcache_cache_only(wm8993->regmap, 1);
  regcache_mark_dirty(wm8993->regmap);

  regulator_bulk_disable(ARRAY_SIZE(wm8993->supplies),
           wm8993->supplies);
  break;
 }

 return 0;
}
