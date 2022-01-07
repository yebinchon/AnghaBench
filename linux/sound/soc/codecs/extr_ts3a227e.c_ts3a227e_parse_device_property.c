
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ts3a227e {int regmap; } ;
struct device {int dummy; } ;


 int MICBIAS_SETTING_MASK ;
 int MICBIAS_SETTING_SFT ;
 int TS3A227E_REG_SETTING_3 ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int ts3a227e_parse_device_property(struct ts3a227e *ts3a227e,
    struct device *dev)
{
 u32 micbias;
 int err;

 err = device_property_read_u32(dev, "ti,micbias", &micbias);
 if (!err) {
  regmap_update_bits(ts3a227e->regmap, TS3A227E_REG_SETTING_3,
   MICBIAS_SETTING_MASK,
   (micbias & 0x07) << MICBIAS_SETTING_SFT);
 }

 return 0;
}
