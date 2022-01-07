
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct snd_soc_component {int dev; } ;
struct regulator {int dummy; } ;
struct da7219_priv {TYPE_1__* supplies; } ;
struct TYPE_3__ {struct regulator* consumer; int supply; } ;


 int DA7219_IO_CTRL ;
 int DA7219_IO_VOLTAGE_LEVEL_1_2V_2_8V ;
 int DA7219_IO_VOLTAGE_LEVEL_2_5V_3_6V ;
 int DA7219_NUM_SUPPLIES ;
 size_t DA7219_SUPPLY_VDDIO ;
 int DA7219_SYSTEM_ACTIVE ;
 int DA7219_SYSTEM_ACTIVE_MASK ;
 int * da7219_supply_names ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int devm_regulator_bulk_get (int ,int,TYPE_1__*) ;
 int regulator_bulk_enable (int,TYPE_1__*) ;
 int regulator_get_voltage (struct regulator*) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int da7219_handle_supplies(struct snd_soc_component *component)
{
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 struct regulator *vddio;
 u8 io_voltage_lvl = DA7219_IO_VOLTAGE_LEVEL_2_5V_3_6V;
 int i, ret;


 for (i = 0; i < DA7219_NUM_SUPPLIES; ++i)
  da7219->supplies[i].supply = da7219_supply_names[i];

 ret = devm_regulator_bulk_get(component->dev, DA7219_NUM_SUPPLIES,
          da7219->supplies);
 if (ret) {
  dev_err(component->dev, "Failed to get supplies");
  return ret;
 }


 vddio = da7219->supplies[DA7219_SUPPLY_VDDIO].consumer;
 ret = regulator_get_voltage(vddio);
 if (ret < 1200000)
  dev_warn(component->dev, "Invalid VDDIO voltage\n");
 else if (ret < 2800000)
  io_voltage_lvl = DA7219_IO_VOLTAGE_LEVEL_1_2V_2_8V;


 ret = regulator_bulk_enable(DA7219_NUM_SUPPLIES, da7219->supplies);
 if (ret) {
  dev_err(component->dev, "Failed to enable supplies");
  return ret;
 }


 snd_soc_component_write(component, DA7219_SYSTEM_ACTIVE, DA7219_SYSTEM_ACTIVE_MASK);


 snd_soc_component_write(component, DA7219_IO_CTRL, io_voltage_lvl);

 return 0;
}
