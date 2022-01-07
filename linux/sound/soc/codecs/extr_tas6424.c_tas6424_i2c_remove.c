
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas6424_data {int supplies; scalar_t__ standby_gpio; int fault_check_work; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_err (struct device*,char*,int) ;
 struct tas6424_data* dev_get_drvdata (struct device*) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int tas6424_i2c_remove(struct i2c_client *client)
{
 struct device *dev = &client->dev;
 struct tas6424_data *tas6424 = dev_get_drvdata(dev);
 int ret;

 cancel_delayed_work_sync(&tas6424->fault_check_work);


 if (tas6424->standby_gpio)
  gpiod_set_value_cansleep(tas6424->standby_gpio, 1);

 ret = regulator_bulk_disable(ARRAY_SIZE(tas6424->supplies),
         tas6424->supplies);
 if (ret < 0) {
  dev_err(dev, "unable to disable supplies: %d\n", ret);
  return ret;
 }

 return 0;
}
