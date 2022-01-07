
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct adau1977_platform_data {unsigned int micbias; } ;
struct adau1977 {int regmap; TYPE_1__* dev; } ;
struct TYPE_3__ {struct adau1977_platform_data* platform_data; } ;


 unsigned int ADAU1977_MICBIAS_8V5 ;
 unsigned int ADAU1977_MICBIAS_9V0 ;
 int ADAU1977_MICBIAS_MB_VOLTS_MASK ;
 unsigned int ADAU1977_MICBIAS_MB_VOLTS_OFFSET ;
 int ADAU1977_REG_MICBIAS ;
 int EINVAL ;
 int dev_err (TYPE_1__*,char*) ;
 scalar_t__ device_property_read_u32 (TYPE_1__*,char*,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int adau1977_setup_micbias(struct adau1977 *adau1977)
{
 struct adau1977_platform_data *pdata = adau1977->dev->platform_data;
 unsigned int micbias;

 if (pdata)
  micbias = pdata->micbias;
 else if (device_property_read_u32(adau1977->dev, "adi,micbias",
       &micbias))
  micbias = ADAU1977_MICBIAS_8V5;

 if (micbias > ADAU1977_MICBIAS_9V0) {
  dev_err(adau1977->dev, "Invalid value for 'adi,micbias'\n");
  return -EINVAL;
 }

 return regmap_update_bits(adau1977->regmap, ADAU1977_REG_MICBIAS,
  ADAU1977_MICBIAS_MB_VOLTS_MASK,
  micbias << ADAU1977_MICBIAS_MB_VOLTS_OFFSET);
}
