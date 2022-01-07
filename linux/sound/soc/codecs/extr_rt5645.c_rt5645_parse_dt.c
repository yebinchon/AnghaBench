
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int jd_mode; int dmic2_data_pin; int dmic1_data_pin; int in2_diff; } ;
struct rt5645_priv {TYPE_1__ pdata; } ;
struct device {int dummy; } ;


 int device_property_read_bool (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int *) ;

__attribute__((used)) static int rt5645_parse_dt(struct rt5645_priv *rt5645, struct device *dev)
{
 rt5645->pdata.in2_diff = device_property_read_bool(dev,
  "realtek,in2-differential");
 device_property_read_u32(dev,
  "realtek,dmic1-data-pin", &rt5645->pdata.dmic1_data_pin);
 device_property_read_u32(dev,
  "realtek,dmic2-data-pin", &rt5645->pdata.dmic2_data_pin);
 device_property_read_u32(dev,
  "realtek,jd-mode", &rt5645->pdata.jd_mode);

 return 0;
}
