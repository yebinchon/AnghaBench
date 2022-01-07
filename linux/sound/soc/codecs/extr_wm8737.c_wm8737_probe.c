
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8737_priv {int supplies; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int SND_SOC_BIAS_STANDBY ;
 int WM8737_LEFT_PGA_VOLUME ;
 int WM8737_LVU ;
 int WM8737_RIGHT_PGA_VOLUME ;
 int WM8737_RVU ;
 int dev_err (int ,char*,...) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 struct wm8737_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int wm8737_reset (struct snd_soc_component*) ;

__attribute__((used)) static int wm8737_probe(struct snd_soc_component *component)
{
 struct wm8737_priv *wm8737 = snd_soc_component_get_drvdata(component);
 int ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(wm8737->supplies),
        wm8737->supplies);
 if (ret != 0) {
  dev_err(component->dev, "Failed to enable supplies: %d\n", ret);
  goto err_get;
 }

 ret = wm8737_reset(component);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset\n");
  goto err_enable;
 }

 snd_soc_component_update_bits(component, WM8737_LEFT_PGA_VOLUME, WM8737_LVU,
       WM8737_LVU);
 snd_soc_component_update_bits(component, WM8737_RIGHT_PGA_VOLUME, WM8737_RVU,
       WM8737_RVU);

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_STANDBY);


 regulator_bulk_disable(ARRAY_SIZE(wm8737->supplies), wm8737->supplies);

 return 0;

err_enable:
 regulator_bulk_disable(ARRAY_SIZE(wm8737->supplies), wm8737->supplies);
err_get:
 return ret;
}
