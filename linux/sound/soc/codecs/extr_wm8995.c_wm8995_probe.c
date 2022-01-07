
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wm8995_priv {TYPE_1__* supplies; TYPE_3__* disable_nb; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_7__ {int notifier_call; } ;
struct TYPE_6__ {int consumer; int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int WM8995_AIF1ADC1_VU ;
 int WM8995_AIF1ADC1_VU_MASK ;
 int WM8995_AIF1ADC2_VU ;
 int WM8995_AIF1ADC2_VU_MASK ;
 int WM8995_AIF1DAC1_VU ;
 int WM8995_AIF1DAC1_VU_MASK ;
 int WM8995_AIF1DAC2_VU ;
 int WM8995_AIF1DAC2_VU_MASK ;
 int WM8995_AIF1_ADC1_RIGHT_VOLUME ;
 int WM8995_AIF1_ADC2_RIGHT_VOLUME ;
 int WM8995_AIF1_DAC1_RIGHT_VOLUME ;
 int WM8995_AIF1_DAC2_RIGHT_VOLUME ;
 int WM8995_AIF2ADC_VU_MASK ;
 int WM8995_AIF2DAC_VU ;
 int WM8995_AIF2DAC_VU_MASK ;
 int WM8995_AIF2_ADC_RIGHT_VOLUME ;
 int WM8995_AIF2_DAC_RIGHT_VOLUME ;
 int WM8995_DAC1_RIGHT_VOLUME ;
 int WM8995_DAC1_VU ;
 int WM8995_DAC1_VU_MASK ;
 int WM8995_DAC2_RIGHT_VOLUME ;
 int WM8995_DAC2_VU ;
 int WM8995_DAC2_VU_MASK ;
 int WM8995_IN1_VU ;
 int WM8995_IN1_VU_MASK ;
 int WM8995_RIGHT_LINE_INPUT_1_VOLUME ;
 int WM8995_SOFTWARE_RESET ;
 int dev_err (int ,char*,int) ;
 int devm_regulator_bulk_get (int ,int,TYPE_1__*) ;
 int devm_regulator_register_notifier (int ,TYPE_3__*) ;
 int regulator_bulk_disable (int,TYPE_1__*) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 struct wm8995_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;
 int wm8995_regulator_event_0 ;
 int wm8995_regulator_event_1 ;
 int wm8995_regulator_event_2 ;
 int wm8995_regulator_event_3 ;
 int wm8995_regulator_event_4 ;
 int wm8995_regulator_event_5 ;
 int wm8995_regulator_event_6 ;
 int wm8995_regulator_event_7 ;
 int * wm8995_supply_names ;
 int wm8995_update_class_w (struct snd_soc_component*) ;

__attribute__((used)) static int wm8995_probe(struct snd_soc_component *component)
{
 struct wm8995_priv *wm8995;
 int i;
 int ret;

 wm8995 = snd_soc_component_get_drvdata(component);
 wm8995->component = component;

 for (i = 0; i < ARRAY_SIZE(wm8995->supplies); i++)
  wm8995->supplies[i].supply = wm8995_supply_names[i];

 ret = devm_regulator_bulk_get(component->dev,
          ARRAY_SIZE(wm8995->supplies),
          wm8995->supplies);
 if (ret) {
  dev_err(component->dev, "Failed to request supplies: %d\n", ret);
  return ret;
 }

 wm8995->disable_nb[0].notifier_call = wm8995_regulator_event_0;
 wm8995->disable_nb[1].notifier_call = wm8995_regulator_event_1;
 wm8995->disable_nb[2].notifier_call = wm8995_regulator_event_2;
 wm8995->disable_nb[3].notifier_call = wm8995_regulator_event_3;
 wm8995->disable_nb[4].notifier_call = wm8995_regulator_event_4;
 wm8995->disable_nb[5].notifier_call = wm8995_regulator_event_5;
 wm8995->disable_nb[6].notifier_call = wm8995_regulator_event_6;
 wm8995->disable_nb[7].notifier_call = wm8995_regulator_event_7;


 for (i = 0; i < ARRAY_SIZE(wm8995->supplies); i++) {
  ret = devm_regulator_register_notifier(
      wm8995->supplies[i].consumer,
      &wm8995->disable_nb[i]);
  if (ret) {
   dev_err(component->dev,
    "Failed to register regulator notifier: %d\n",
    ret);
  }
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(wm8995->supplies),
        wm8995->supplies);
 if (ret) {
  dev_err(component->dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 ret = snd_soc_component_read32(component, WM8995_SOFTWARE_RESET);
 if (ret < 0) {
  dev_err(component->dev, "Failed to read device ID: %d\n", ret);
  goto err_reg_enable;
 }

 if (ret != 0x8995) {
  dev_err(component->dev, "Invalid device ID: %#x\n", ret);
  ret = -EINVAL;
  goto err_reg_enable;
 }

 ret = snd_soc_component_write(component, WM8995_SOFTWARE_RESET, 0);
 if (ret < 0) {
  dev_err(component->dev, "Failed to issue reset: %d\n", ret);
  goto err_reg_enable;
 }


 snd_soc_component_update_bits(component, WM8995_AIF1_DAC1_RIGHT_VOLUME,
       WM8995_AIF1DAC1_VU_MASK, WM8995_AIF1DAC1_VU);
 snd_soc_component_update_bits(component, WM8995_AIF1_DAC2_RIGHT_VOLUME,
       WM8995_AIF1DAC2_VU_MASK, WM8995_AIF1DAC2_VU);
 snd_soc_component_update_bits(component, WM8995_AIF2_DAC_RIGHT_VOLUME,
       WM8995_AIF2DAC_VU_MASK, WM8995_AIF2DAC_VU);
 snd_soc_component_update_bits(component, WM8995_AIF1_ADC1_RIGHT_VOLUME,
       WM8995_AIF1ADC1_VU_MASK, WM8995_AIF1ADC1_VU);
 snd_soc_component_update_bits(component, WM8995_AIF1_ADC2_RIGHT_VOLUME,
       WM8995_AIF1ADC2_VU_MASK, WM8995_AIF1ADC2_VU);
 snd_soc_component_update_bits(component, WM8995_AIF2_ADC_RIGHT_VOLUME,
       WM8995_AIF2ADC_VU_MASK, WM8995_AIF1ADC2_VU);
 snd_soc_component_update_bits(component, WM8995_DAC1_RIGHT_VOLUME,
       WM8995_DAC1_VU_MASK, WM8995_DAC1_VU);
 snd_soc_component_update_bits(component, WM8995_DAC2_RIGHT_VOLUME,
       WM8995_DAC2_VU_MASK, WM8995_DAC2_VU);
 snd_soc_component_update_bits(component, WM8995_RIGHT_LINE_INPUT_1_VOLUME,
       WM8995_IN1_VU_MASK, WM8995_IN1_VU);

 wm8995_update_class_w(component);

 return 0;

err_reg_enable:
 regulator_bulk_disable(ARRAY_SIZE(wm8995->supplies), wm8995->supplies);
 return ret;
}
