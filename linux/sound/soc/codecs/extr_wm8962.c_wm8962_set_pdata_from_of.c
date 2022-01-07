
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wm8962_pdata {int spk_mono; int* gpio_init; int mclk; int mic_cfg; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int devm_clk_get (TYPE_1__*,int *) ;
 scalar_t__ of_property_read_bool (struct device_node const*,char*) ;
 scalar_t__ of_property_read_u32 (struct device_node const*,char*,int *) ;
 scalar_t__ of_property_read_u32_array (struct device_node const*,char*,int*,int) ;

__attribute__((used)) static int wm8962_set_pdata_from_of(struct i2c_client *i2c,
        struct wm8962_pdata *pdata)
{
 const struct device_node *np = i2c->dev.of_node;
 u32 val32;
 int i;

 if (of_property_read_bool(np, "spk-mono"))
  pdata->spk_mono = 1;

 if (of_property_read_u32(np, "mic-cfg", &val32) >= 0)
  pdata->mic_cfg = val32;

 if (of_property_read_u32_array(np, "gpio-cfg", pdata->gpio_init,
           ARRAY_SIZE(pdata->gpio_init)) >= 0)
  for (i = 0; i < ARRAY_SIZE(pdata->gpio_init); i++) {





   if (pdata->gpio_init[i] > 0xffff)
    pdata->gpio_init[i] = 0x0;
  }

 pdata->mclk = devm_clk_get(&i2c->dev, ((void*)0));

 return 0;
}
