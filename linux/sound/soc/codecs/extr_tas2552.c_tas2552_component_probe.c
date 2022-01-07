
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas2552_data {int supplies; int enable_gpio; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int TAS2552_APT_DELAY_200 ;
 int TAS2552_APT_EN ;
 int TAS2552_APT_THRESH_20_17 ;
 int TAS2552_BOOST_APT_CTRL ;
 int TAS2552_BOOST_EN ;
 int TAS2552_CFG_1 ;
 int TAS2552_CFG_2 ;
 int TAS2552_CFG_3 ;
 int TAS2552_DATA_OUT_V_DATA ;
 int TAS2552_DIN_SRC_SEL_AVG_L_R ;
 int TAS2552_I2S_OUT_SEL ;
 int TAS2552_LIM_EN ;
 int TAS2552_MUTE ;
 int TAS2552_OUTPUT_DATA ;
 int TAS2552_PDM_DATA_SEL_V_I ;
 int TAS2552_R_DATA_OUT (int ) ;
 int dev_err (int ,char*,int) ;
 int gpiod_set_value (int ,int) ;
 int pm_runtime_get_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct tas2552_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int tas2552_component_probe(struct snd_soc_component *component)
{
 struct tas2552_data *tas2552 = snd_soc_component_get_drvdata(component);
 int ret;

 tas2552->component = component;

 ret = regulator_bulk_enable(ARRAY_SIZE(tas2552->supplies),
        tas2552->supplies);

 if (ret != 0) {
  dev_err(component->dev, "Failed to enable supplies: %d\n",
   ret);
  return ret;
 }

 gpiod_set_value(tas2552->enable_gpio, 1);

 ret = pm_runtime_get_sync(component->dev);
 if (ret < 0) {
  dev_err(component->dev, "Enabling device failed: %d\n",
   ret);
  goto probe_fail;
 }

 snd_soc_component_update_bits(component, TAS2552_CFG_1, TAS2552_MUTE, TAS2552_MUTE);
 snd_soc_component_write(component, TAS2552_CFG_3, TAS2552_I2S_OUT_SEL |
         TAS2552_DIN_SRC_SEL_AVG_L_R);
 snd_soc_component_write(component, TAS2552_OUTPUT_DATA,
        TAS2552_PDM_DATA_SEL_V_I |
        TAS2552_R_DATA_OUT(TAS2552_DATA_OUT_V_DATA));
 snd_soc_component_write(component, TAS2552_BOOST_APT_CTRL, TAS2552_APT_DELAY_200 |
           TAS2552_APT_THRESH_20_17);

 snd_soc_component_write(component, TAS2552_CFG_2, TAS2552_BOOST_EN | TAS2552_APT_EN |
         TAS2552_LIM_EN);

 return 0;

probe_fail:
 gpiod_set_value(tas2552->enable_gpio, 0);

 regulator_bulk_disable(ARRAY_SIZE(tas2552->supplies),
     tas2552->supplies);
 return ret;
}
