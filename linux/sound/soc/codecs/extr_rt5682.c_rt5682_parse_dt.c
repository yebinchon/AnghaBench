
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ldo1_en; int jd_src; int dmic1_clk_pin; int dmic1_data_pin; } ;
struct rt5682_priv {TYPE_1__ pdata; } ;
struct device {int of_node; } ;


 int device_property_read_u32 (struct device*,char*,int *) ;
 int of_get_named_gpio (int ,char*,int ) ;

__attribute__((used)) static int rt5682_parse_dt(struct rt5682_priv *rt5682, struct device *dev)
{

 device_property_read_u32(dev, "realtek,dmic1-data-pin",
  &rt5682->pdata.dmic1_data_pin);
 device_property_read_u32(dev, "realtek,dmic1-clk-pin",
  &rt5682->pdata.dmic1_clk_pin);
 device_property_read_u32(dev, "realtek,jd-src",
  &rt5682->pdata.jd_src);

 rt5682->pdata.ldo1_en = of_get_named_gpio(dev->of_node,
  "realtek,ldo1-en-gpios", 0);

 return 0;
}
