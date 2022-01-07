
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;


 int WM8962_HDBASS_AI_1 ;
 int WM8962_MAX_REGISTER ;
 int regcache_sync_region (int ,int ,int ) ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8962_dsp2_write_config(struct snd_soc_component *component)
{
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);

 return regcache_sync_region(wm8962->regmap,
        WM8962_HDBASS_AI_1, WM8962_MAX_REGISTER);
}
