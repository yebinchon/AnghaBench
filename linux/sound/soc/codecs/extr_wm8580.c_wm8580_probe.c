
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8580_priv {int supplies; TYPE_1__* drvdata; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_2__ {int num_dacs; } ;


 int ARRAY_SIZE (int ) ;
 int WM8580_RESET ;
 int dev_err (int ,char*,int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8580_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int ) ;
 int wm8581_dapm_routes ;
 int wm8581_dapm_widgets ;
 int wm8581_snd_controls ;

__attribute__((used)) static int wm8580_probe(struct snd_soc_component *component)
{
 struct wm8580_priv *wm8580 = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 int ret = 0;

 switch (wm8580->drvdata->num_dacs) {
 case 4:
  snd_soc_add_component_controls(component, wm8581_snd_controls,
     ARRAY_SIZE(wm8581_snd_controls));
  snd_soc_dapm_new_controls(dapm, wm8581_dapm_widgets,
     ARRAY_SIZE(wm8581_dapm_widgets));
  snd_soc_dapm_add_routes(dapm, wm8581_dapm_routes,
     ARRAY_SIZE(wm8581_dapm_routes));
  break;
 default:
  break;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(wm8580->supplies),
        wm8580->supplies);
 if (ret != 0) {
  dev_err(component->dev, "Failed to enable supplies: %d\n", ret);
  goto err_regulator_get;
 }


 ret = snd_soc_component_write(component, WM8580_RESET, 0);
 if (ret != 0) {
  dev_err(component->dev, "Failed to reset component: %d\n", ret);
  goto err_regulator_enable;
 }

 return 0;

err_regulator_enable:
 regulator_bulk_disable(ARRAY_SIZE(wm8580->supplies), wm8580->supplies);
err_regulator_get:
 return ret;
}
