
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int jd_src; int dmic2_data_pin; int dmic1_data_pin; void* in4_diff; void* in3_diff; void* in1_diff; } ;
struct rt5659_priv {TYPE_1__ pdata; } ;
struct device {int dummy; } ;


 void* device_property_read_bool (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int *) ;

__attribute__((used)) static int rt5659_parse_dt(struct rt5659_priv *rt5659, struct device *dev)
{
 rt5659->pdata.in1_diff = device_property_read_bool(dev,
     "realtek,in1-differential");
 rt5659->pdata.in3_diff = device_property_read_bool(dev,
     "realtek,in3-differential");
 rt5659->pdata.in4_diff = device_property_read_bool(dev,
     "realtek,in4-differential");


 device_property_read_u32(dev, "realtek,dmic1-data-pin",
  &rt5659->pdata.dmic1_data_pin);
 device_property_read_u32(dev, "realtek,dmic2-data-pin",
  &rt5659->pdata.dmic2_data_pin);
 device_property_read_u32(dev, "realtek,jd-src",
  &rt5659->pdata.jd_src);

 return 0;
}
