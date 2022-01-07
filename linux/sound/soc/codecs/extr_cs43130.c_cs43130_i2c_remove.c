
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct cs43130_private {scalar_t__ xtal_ibias; int supplies; int reset_gpio; int wq; int work; scalar_t__ dc_meas; int regmap; } ;


 int CS43130_HP_PLUG_INT ;
 int CS43130_HP_UNPLUG_INT ;
 int CS43130_INT_MASK_1 ;
 int CS43130_NUM_SUPPLIES ;
 int CS43130_XTAL_ERR_INT ;
 int CS43130_XTAL_ERR_INT_SHIFT ;
 scalar_t__ CS43130_XTAL_UNUSED ;
 int cancel_work_sync (int *) ;
 int dev_attr_hpload_ac_l ;
 int dev_attr_hpload_ac_r ;
 int dev_attr_hpload_dc_l ;
 int dev_attr_hpload_dc_r ;
 int device_remove_file (int *,int *) ;
 int flush_workqueue (int ) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 struct cs43130_private* i2c_get_clientdata (struct i2c_client*) ;
 int pm_runtime_disable (int *) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int cs43130_i2c_remove(struct i2c_client *client)
{
 struct cs43130_private *cs43130 = i2c_get_clientdata(client);

 if (cs43130->xtal_ibias != CS43130_XTAL_UNUSED)
  regmap_update_bits(cs43130->regmap, CS43130_INT_MASK_1,
       CS43130_XTAL_ERR_INT,
       1 << CS43130_XTAL_ERR_INT_SHIFT);

 regmap_update_bits(cs43130->regmap, CS43130_INT_MASK_1,
      CS43130_HP_PLUG_INT | CS43130_HP_UNPLUG_INT,
      CS43130_HP_PLUG_INT | CS43130_HP_UNPLUG_INT);

 if (cs43130->dc_meas) {
  cancel_work_sync(&cs43130->work);
  flush_workqueue(cs43130->wq);

  device_remove_file(&client->dev, &dev_attr_hpload_dc_l);
  device_remove_file(&client->dev, &dev_attr_hpload_dc_r);
  device_remove_file(&client->dev, &dev_attr_hpload_ac_l);
  device_remove_file(&client->dev, &dev_attr_hpload_ac_r);
 }

 gpiod_set_value_cansleep(cs43130->reset_gpio, 0);

 pm_runtime_disable(&client->dev);
 regulator_bulk_disable(CS43130_NUM_SUPPLIES, cs43130->supplies);

 return 0;
}
