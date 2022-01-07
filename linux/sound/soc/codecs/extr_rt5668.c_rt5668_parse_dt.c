
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ldo1_en; int jd_src; int dmic1_clk_pin; int dmic1_data_pin; } ;
struct rt5668_priv {TYPE_1__ pdata; } ;
struct device {int of_node; } ;


 int of_get_named_gpio (int ,char*,int ) ;
 int of_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static int rt5668_parse_dt(struct rt5668_priv *rt5668, struct device *dev)
{

 of_property_read_u32(dev->of_node, "realtek,dmic1-data-pin",
  &rt5668->pdata.dmic1_data_pin);
 of_property_read_u32(dev->of_node, "realtek,dmic1-clk-pin",
  &rt5668->pdata.dmic1_clk_pin);
 of_property_read_u32(dev->of_node, "realtek,jd-src",
  &rt5668->pdata.jd_src);

 rt5668->pdata.ldo1_en = of_get_named_gpio(dev->of_node,
  "realtek,ldo1-en-gpios", 0);

 return 0;
}
