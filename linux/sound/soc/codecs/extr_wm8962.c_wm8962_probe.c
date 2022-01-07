
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm8962_priv {TYPE_1__* disable_nb; TYPE_2__* supplies; struct snd_soc_component* component; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_4__ {int consumer; } ;
struct TYPE_3__ {int notifier_call; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int WM8962_GP2_FN_MASK ;
 scalar_t__ WM8962_GPIO_BASE ;


 int WM8962_MAX_GPIO ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int devm_regulator_register_notifier (int ,TYPE_1__*) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8962_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,scalar_t__) ;
 int snd_soc_dapm_nc_pin (struct snd_soc_dapm_context*,char*) ;
 int wm8962_add_widgets (struct snd_soc_component*) ;
 int wm8962_init_beep (struct snd_soc_component*) ;
 int wm8962_init_gpio (struct snd_soc_component*) ;
 int wm8962_regulator_event_0 ;
 int wm8962_regulator_event_1 ;
 int wm8962_regulator_event_2 ;
 int wm8962_regulator_event_3 ;
 int wm8962_regulator_event_4 ;
 int wm8962_regulator_event_5 ;
 int wm8962_regulator_event_6 ;
 int wm8962_regulator_event_7 ;

__attribute__((used)) static int wm8962_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 int ret;
 struct wm8962_priv *wm8962 = snd_soc_component_get_drvdata(component);
 int i;
 bool dmicclk, dmicdat;

 wm8962->component = component;

 wm8962->disable_nb[0].notifier_call = wm8962_regulator_event_0;
 wm8962->disable_nb[1].notifier_call = wm8962_regulator_event_1;
 wm8962->disable_nb[2].notifier_call = wm8962_regulator_event_2;
 wm8962->disable_nb[3].notifier_call = wm8962_regulator_event_3;
 wm8962->disable_nb[4].notifier_call = wm8962_regulator_event_4;
 wm8962->disable_nb[5].notifier_call = wm8962_regulator_event_5;
 wm8962->disable_nb[6].notifier_call = wm8962_regulator_event_6;
 wm8962->disable_nb[7].notifier_call = wm8962_regulator_event_7;


 for (i = 0; i < ARRAY_SIZE(wm8962->supplies); i++) {
  ret = devm_regulator_register_notifier(
      wm8962->supplies[i].consumer,
      &wm8962->disable_nb[i]);
  if (ret != 0) {
   dev_err(component->dev,
    "Failed to register regulator notifier: %d\n",
    ret);
  }
 }

 wm8962_add_widgets(component);


 dmicclk = 0;
 dmicdat = 0;
 for (i = 0; i < WM8962_MAX_GPIO; i++) {
  switch (snd_soc_component_read32(component, WM8962_GPIO_BASE + i)
   & WM8962_GP2_FN_MASK) {
  case 129:
   dmicclk = 1;
   break;
  case 128:
   dmicdat = 1;
   break;
  default:
   break;
  }
 }
 if (!dmicclk || !dmicdat) {
  dev_dbg(component->dev, "DMIC not in use, disabling\n");
  snd_soc_dapm_nc_pin(dapm, "DMICDAT");
 }
 if (dmicclk != dmicdat)
  dev_warn(component->dev, "DMIC GPIOs partially configured\n");

 wm8962_init_beep(component);
 wm8962_init_gpio(component);

 return 0;
}
