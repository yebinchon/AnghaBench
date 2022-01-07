
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8960_data {int capless; int shared_lrclk; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 scalar_t__ of_property_read_bool (struct device_node const*,char*) ;

__attribute__((used)) static void wm8960_set_pdata_from_of(struct i2c_client *i2c,
    struct wm8960_data *pdata)
{
 const struct device_node *np = i2c->dev.of_node;

 if (of_property_read_bool(np, "wlf,capless"))
  pdata->capless = 1;

 if (of_property_read_bool(np, "wlf,shared-lrclk"))
  pdata->shared_lrclk = 1;
}
