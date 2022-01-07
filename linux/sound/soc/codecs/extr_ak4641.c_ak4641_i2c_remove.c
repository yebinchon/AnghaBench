
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ak4641_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct ak4641_platform_data {int gpio_npdn; int gpio_power; } ;


 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;

__attribute__((used)) static int ak4641_i2c_remove(struct i2c_client *i2c)
{
 struct ak4641_platform_data *pdata = i2c->dev.platform_data;

 if (pdata) {
  if (gpio_is_valid(pdata->gpio_power)) {
   gpio_set_value(pdata->gpio_power, 0);
   gpio_free(pdata->gpio_power);
  }
  if (gpio_is_valid(pdata->gpio_npdn))
   gpio_free(pdata->gpio_npdn);
 }

 return 0;
}
