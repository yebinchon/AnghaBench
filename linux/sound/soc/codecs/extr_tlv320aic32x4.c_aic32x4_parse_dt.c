
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct aic32x4_setup_data {int gpio_func; } ;
struct aic32x4_priv {int swapdacs; struct aic32x4_setup_data* setup; int rstn_gpio; scalar_t__ micpga_routing; int mclk_name; int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct aic32x4_setup_data* devm_kzalloc (int ,int,int ) ;
 int of_clk_get_parent_name (struct device_node*,int) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 int of_property_match_string (struct device_node*,char*,char*) ;
 scalar_t__ of_property_read_u32_array (struct device_node*,char*,int ,int) ;

__attribute__((used)) static int aic32x4_parse_dt(struct aic32x4_priv *aic32x4,
  struct device_node *np)
{
 struct aic32x4_setup_data *aic32x4_setup;
 int ret;

 aic32x4_setup = devm_kzalloc(aic32x4->dev, sizeof(*aic32x4_setup),
       GFP_KERNEL);
 if (!aic32x4_setup)
  return -ENOMEM;

 ret = of_property_match_string(np, "clock-names", "mclk");
 if (ret < 0)
  return -EINVAL;
 aic32x4->mclk_name = of_clk_get_parent_name(np, ret);

 aic32x4->swapdacs = 0;
 aic32x4->micpga_routing = 0;
 aic32x4->rstn_gpio = of_get_named_gpio(np, "reset-gpios", 0);

 if (of_property_read_u32_array(np, "aic32x4-gpio-func",
    aic32x4_setup->gpio_func, 5) >= 0)
  aic32x4->setup = aic32x4_setup;
 return 0;
}
