
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_codec_data {int digimic_delay; int ramp_delay_value; int offset_cncl_path; int hs_extmute; int hs_extmute_gpio; } ;
struct device_node {int dummy; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;

__attribute__((used)) static void twl4030_setup_pdata_of(struct twl4030_codec_data *pdata,
       struct device_node *node)
{
 int value;

 of_property_read_u32(node, "ti,digimic_delay",
        &pdata->digimic_delay);
 of_property_read_u32(node, "ti,ramp_delay_value",
        &pdata->ramp_delay_value);
 of_property_read_u32(node, "ti,offset_cncl_path",
        &pdata->offset_cncl_path);
 if (!of_property_read_u32(node, "ti,hs_extmute", &value))
  pdata->hs_extmute = value;

 pdata->hs_extmute_gpio = of_get_named_gpio(node,
         "ti,hs_extmute_gpio", 0);
 if (gpio_is_valid(pdata->hs_extmute_gpio))
  pdata->hs_extmute = 1;
}
