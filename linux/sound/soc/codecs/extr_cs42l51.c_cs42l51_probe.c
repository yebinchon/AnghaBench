
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct cs42l51_private {TYPE_1__* supplies; struct regmap* reset_gpio; struct regmap* mclk_handle; struct regmap* regmap; } ;
struct TYPE_5__ {int supply; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CS42L51_CHIP_ID ;
 int CS42L51_CHIP_REV_A ;
 int CS42L51_CHIP_REV_B ;
 int CS42L51_CHIP_REV_ID ;
 unsigned int CS42L51_CHIP_REV_MASK ;
 unsigned int CS42L51_MK_CHIP_REV (int ,int ) ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int cs42l51_dai ;
 int * cs42l51_supply_names ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,unsigned int) ;
 int dev_set_drvdata (struct device*,struct cs42l51_private*) ;
 struct regmap* devm_clk_get (struct device*,char*) ;
 struct regmap* devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct cs42l51_private* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_bulk_get (struct device*,int,TYPE_1__*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int gpiod_set_value_cansleep (struct regmap*,int ) ;
 int mdelay (int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regulator_bulk_disable (int,TYPE_1__*) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int soc_component_device_cs42l51 ;

int cs42l51_probe(struct device *dev, struct regmap *regmap)
{
 struct cs42l51_private *cs42l51;
 unsigned int val;
 int ret, i;

 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 cs42l51 = devm_kzalloc(dev, sizeof(struct cs42l51_private),
          GFP_KERNEL);
 if (!cs42l51)
  return -ENOMEM;

 dev_set_drvdata(dev, cs42l51);
 cs42l51->regmap = regmap;

 cs42l51->mclk_handle = devm_clk_get(dev, "MCLK");
 if (IS_ERR(cs42l51->mclk_handle)) {
  if (PTR_ERR(cs42l51->mclk_handle) != -ENOENT)
   return PTR_ERR(cs42l51->mclk_handle);
  cs42l51->mclk_handle = ((void*)0);
 }

 for (i = 0; i < ARRAY_SIZE(cs42l51->supplies); i++)
  cs42l51->supplies[i].supply = cs42l51_supply_names[i];

 ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(cs42l51->supplies),
          cs42l51->supplies);
 if (ret != 0) {
  dev_err(dev, "Failed to request supplies: %d\n", ret);
  return ret;
 }

 ret = regulator_bulk_enable(ARRAY_SIZE(cs42l51->supplies),
        cs42l51->supplies);
 if (ret != 0) {
  dev_err(dev, "Failed to enable supplies: %d\n", ret);
  return ret;
 }

 cs42l51->reset_gpio = devm_gpiod_get_optional(dev, "reset",
            GPIOD_OUT_LOW);
 if (IS_ERR(cs42l51->reset_gpio))
  return PTR_ERR(cs42l51->reset_gpio);

 if (cs42l51->reset_gpio) {
  dev_dbg(dev, "Release reset gpio\n");
  gpiod_set_value_cansleep(cs42l51->reset_gpio, 0);
  mdelay(2);
 }


 ret = regmap_read(regmap, CS42L51_CHIP_REV_ID, &val);
 if (ret < 0) {
  dev_err(dev, "failed to read I2C\n");
  goto error;
 }

 if ((val != CS42L51_MK_CHIP_REV(CS42L51_CHIP_ID, CS42L51_CHIP_REV_A)) &&
     (val != CS42L51_MK_CHIP_REV(CS42L51_CHIP_ID, CS42L51_CHIP_REV_B))) {
  dev_err(dev, "Invalid chip id: %x\n", val);
  ret = -ENODEV;
  goto error;
 }
 dev_info(dev, "Cirrus Logic CS42L51, Revision: %02X\n",
   val & CS42L51_CHIP_REV_MASK);

 ret = devm_snd_soc_register_component(dev,
   &soc_component_device_cs42l51, &cs42l51_dai, 1);
 if (ret < 0)
  goto error;

 return 0;

error:
 regulator_bulk_disable(ARRAY_SIZE(cs42l51->supplies),
          cs42l51->supplies);
 return ret;
}
