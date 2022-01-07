
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8904_priv {int mclk; int supplies; int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8904_BIAS_CONTROL_0 ;
 int WM8904_BIAS_ENA ;
 int WM8904_ISEL_MASK ;
 int WM8904_ISEL_SHIFT ;
 int WM8904_VMID_CONTROL_0 ;
 int WM8904_VMID_ENA ;
 int WM8904_VMID_RES_MASK ;
 int WM8904_VMID_RES_SHIFT ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8904_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8904_priv *wm8904 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;

 case 129:

  snd_soc_component_update_bits(component, WM8904_VMID_CONTROL_0,
        WM8904_VMID_RES_MASK,
        0x1 << WM8904_VMID_RES_SHIFT);


  snd_soc_component_update_bits(component, WM8904_BIAS_CONTROL_0,
        WM8904_ISEL_MASK, 2 << WM8904_ISEL_SHIFT);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(wm8904->supplies),
          wm8904->supplies);
   if (ret != 0) {
    dev_err(component->dev,
     "Failed to enable supplies: %d\n",
     ret);
    return ret;
   }

   ret = clk_prepare_enable(wm8904->mclk);
   if (ret) {
    dev_err(component->dev,
     "Failed to enable MCLK: %d\n", ret);
    regulator_bulk_disable(ARRAY_SIZE(wm8904->supplies),
             wm8904->supplies);
    return ret;
   }

   regcache_cache_only(wm8904->regmap, 0);
   regcache_sync(wm8904->regmap);


   snd_soc_component_update_bits(component, WM8904_BIAS_CONTROL_0,
         WM8904_BIAS_ENA, WM8904_BIAS_ENA);


   snd_soc_component_update_bits(component, WM8904_VMID_CONTROL_0,
         WM8904_VMID_ENA |
         WM8904_VMID_RES_MASK,
         WM8904_VMID_ENA |
         0x3 << WM8904_VMID_RES_SHIFT);


   msleep(1);
  }


  snd_soc_component_update_bits(component, WM8904_VMID_CONTROL_0,
        WM8904_VMID_RES_MASK,
        0x2 << WM8904_VMID_RES_SHIFT);


  snd_soc_component_update_bits(component, WM8904_BIAS_CONTROL_0,
        WM8904_ISEL_MASK, 0);
  break;

 case 131:

  snd_soc_component_update_bits(component, WM8904_VMID_CONTROL_0,
        WM8904_VMID_RES_MASK | WM8904_VMID_ENA, 0);


  snd_soc_component_update_bits(component, WM8904_BIAS_CONTROL_0,
        WM8904_BIAS_ENA, 0);

  regcache_cache_only(wm8904->regmap, 1);
  regcache_mark_dirty(wm8904->regmap);

  regulator_bulk_disable(ARRAY_SIZE(wm8904->supplies),
           wm8904->supplies);
  clk_disable_unprepare(wm8904->mclk);
  break;
 }
 return 0;
}
