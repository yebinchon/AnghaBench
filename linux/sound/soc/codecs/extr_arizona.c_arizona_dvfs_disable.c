
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct arizona_priv {struct arizona* arizona; } ;
struct arizona {int dcvdd; int regmap; } ;


 int ARIZONA_DYNAMIC_FREQUENCY_SCALING_1 ;
 int ARIZONA_SUBSYS_MAX_FREQ ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regulator_set_voltage (int ,int,int) ;
 struct arizona_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int arizona_dvfs_disable(struct snd_soc_component *component)
{
 const struct arizona_priv *priv = snd_soc_component_get_drvdata(component);
 struct arizona *arizona = priv->arizona;
 int ret;

 ret = regmap_update_bits(arizona->regmap,
     ARIZONA_DYNAMIC_FREQUENCY_SCALING_1,
     ARIZONA_SUBSYS_MAX_FREQ, 0);
 if (ret) {
  dev_err(component->dev, "Failed to disable subsys max: %d\n", ret);
  return ret;
 }

 ret = regulator_set_voltage(arizona->dcvdd, 1200000, 1800000);
 if (ret) {
  dev_err(component->dev, "Failed to unboost DCVDD: %d\n", ret);
  return ret;
 }

 return 0;
}
