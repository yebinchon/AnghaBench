
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ device_property_present (struct device*,char*) ;

__attribute__((used)) static bool rt5645_check_dp(struct device *dev)
{
 if (device_property_present(dev, "realtek,in2-differential") ||
     device_property_present(dev, "realtek,dmic1-data-pin") ||
     device_property_present(dev, "realtek,dmic2-data-pin") ||
     device_property_present(dev, "realtek,jd-mode"))
  return 1;

 return 0;
}
