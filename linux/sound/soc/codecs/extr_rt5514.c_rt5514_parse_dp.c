
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dsp_calib_clk_rate; int dsp_calib_clk_name; int dmic_init_delay; } ;
struct rt5514_priv {TYPE_1__ pdata; } ;
struct device {int dummy; } ;


 int device_property_read_string (struct device*,char*,int *) ;
 int device_property_read_u32 (struct device*,char*,int *) ;

__attribute__((used)) static int rt5514_parse_dp(struct rt5514_priv *rt5514, struct device *dev)
{
 device_property_read_u32(dev, "realtek,dmic-init-delay-ms",
  &rt5514->pdata.dmic_init_delay);
 device_property_read_string(dev, "realtek,dsp-calib-clk-name",
  &rt5514->pdata.dsp_calib_clk_name);
 device_property_read_u32(dev, "realtek,dsp-calib-clk-rate",
  &rt5514->pdata.dsp_calib_clk_rate);

 return 0;
}
