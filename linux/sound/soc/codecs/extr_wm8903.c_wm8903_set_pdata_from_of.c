
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct wm8903_platform_data {int* gpio_cfg; void* micdet_delay; void* micdet_cfg; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int WM8903_GPIO_CONFIG_ZERO ;
 int dev_err (TYPE_1__*,char*,int,int) ;
 scalar_t__ of_property_read_u32 (struct device_node const*,char*,void**) ;
 scalar_t__ of_property_read_u32_array (struct device_node const*,char*,int*,int) ;

__attribute__((used)) static int wm8903_set_pdata_from_of(struct i2c_client *i2c,
        struct wm8903_platform_data *pdata)
{
 const struct device_node *np = i2c->dev.of_node;
 u32 val32;
 int i;

 if (of_property_read_u32(np, "micdet-cfg", &val32) >= 0)
  pdata->micdet_cfg = val32;

 if (of_property_read_u32(np, "micdet-delay", &val32) >= 0)
  pdata->micdet_delay = val32;

 if (of_property_read_u32_array(np, "gpio-cfg", pdata->gpio_cfg,
           ARRAY_SIZE(pdata->gpio_cfg)) >= 0) {
  for (i = 0; i < ARRAY_SIZE(pdata->gpio_cfg); i++) {
   if (pdata->gpio_cfg[i] == 0) {
    pdata->gpio_cfg[i] = WM8903_GPIO_CONFIG_ZERO;
   } else if (pdata->gpio_cfg[i] == 0xffffffff) {
    pdata->gpio_cfg[i] = 0;
   } else if (pdata->gpio_cfg[i] > 0x7fff) {
    dev_err(&i2c->dev, "Invalid gpio-cfg[%d] %x\n",
     i, pdata->gpio_cfg[i]);
    return -EINVAL;
   }
  }
 }

 return 0;
}
