
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct wm8985_priv {TYPE_1__* supplies; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_8__ {int supply; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int WM8985_BIASCUT ;
 TYPE_1__ WM8985_BIAS_CTRL ;
 int dev_err (int ,char*,int) ;
 int devm_regulator_bulk_get (int ,size_t,TYPE_1__*) ;
 int regulator_bulk_disable (size_t,TYPE_1__*) ;
 int regulator_bulk_enable (size_t,TYPE_1__*) ;
 struct wm8985_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,TYPE_1__,int,int) ;
 TYPE_1__* volume_update_regs ;
 int wm8985_add_widgets (struct snd_soc_component*) ;
 int wm8985_reset (struct snd_soc_component*) ;
 int * wm8985_supply_names ;

__attribute__((used)) static int wm8985_probe(struct snd_soc_component *component)
{
 size_t i;
 struct wm8985_priv *wm8985;
 int ret;

 wm8985 = snd_soc_component_get_drvdata(component);

 for (i = 0; i < ARRAY_SIZE(wm8985->supplies); i++)
  wm8985->supplies[i].supply = wm8985_supply_names[i];

 ret = devm_regulator_bulk_get(component->dev, ARRAY_SIZE(wm8985->supplies),
     wm8985->supplies);
 if (ret) {
  dev_err(component->dev, "Failed to request supplies: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(wm8985->supplies),
        wm8985->supplies);
 if (ret) {
  dev_err(component->dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 ret = wm8985_reset(component);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset: %d\n", ret);
  goto err_reg_enable;
 }


 for (i = 0; i < ARRAY_SIZE(volume_update_regs); ++i)
  snd_soc_component_update_bits(component, volume_update_regs[i],
        0x100, 0x100);

 snd_soc_component_update_bits(component, WM8985_BIAS_CTRL, WM8985_BIASCUT,
       WM8985_BIASCUT);

 wm8985_add_widgets(component);

 return 0;

err_reg_enable:
 regulator_bulk_disable(ARRAY_SIZE(wm8985->supplies), wm8985->supplies);
 return ret;
}
