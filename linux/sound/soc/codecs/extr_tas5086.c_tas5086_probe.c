
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tas5086_private {int pwm_start_mid_z; int charge_period; int supplies; int regmap; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
typedef int name ;
struct TYPE_4__ {struct device_node* of_node; } ;


 int ARRAY_SIZE (int ) ;
 int TAS5086_MASTER_VOL ;
 int dev_err (TYPE_1__*,char*,int) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ of_match_device (int ,TYPE_1__*) ;
 int of_match_ptr (int ) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int regmap_write (int ,int ,int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct tas5086_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snprintf (char*,int,char*,int) ;
 int tas5086_dt_ids ;
 int tas5086_init (TYPE_1__*,struct tas5086_private*) ;
 int tas5086_reset (struct tas5086_private*) ;

__attribute__((used)) static int tas5086_probe(struct snd_soc_component *component)
{
 struct tas5086_private *priv = snd_soc_component_get_drvdata(component);
 int i, ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(priv->supplies), priv->supplies);
 if (ret < 0) {
  dev_err(component->dev, "Failed to enable regulators: %d\n", ret);
  return ret;
 }

 priv->pwm_start_mid_z = 0;
 priv->charge_period = 1300000;

 if (of_match_device(of_match_ptr(tas5086_dt_ids), component->dev)) {
  struct device_node *of_node = component->dev->of_node;

  of_property_read_u32(of_node, "ti,charge-period",
         &priv->charge_period);

  for (i = 0; i < 6; i++) {
   char name[25];

   snprintf(name, sizeof(name),
     "ti,mid-z-channel-%d", i + 1);

   if (of_get_property(of_node, name, ((void*)0)) != ((void*)0))
    priv->pwm_start_mid_z |= 1 << i;
  }
 }

 tas5086_reset(priv);
 ret = tas5086_init(component->dev, priv);
 if (ret < 0)
  goto exit_disable_regulators;


 ret = regmap_write(priv->regmap, TAS5086_MASTER_VOL, 0x30);
 if (ret < 0)
  goto exit_disable_regulators;

 return 0;

exit_disable_regulators:
 regulator_bulk_disable(ARRAY_SIZE(priv->supplies), priv->supplies);

 return ret;
}
