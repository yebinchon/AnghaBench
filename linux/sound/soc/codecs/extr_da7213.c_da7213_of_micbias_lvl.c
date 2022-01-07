
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
typedef enum da7213_micbias_voltage { ____Placeholder_da7213_micbias_voltage } da7213_micbias_voltage ;


 int DA7213_MICBIAS_1_6V ;
 int DA7213_MICBIAS_2_2V ;
 int DA7213_MICBIAS_2_5V ;
 int DA7213_MICBIAS_3_0V ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static enum da7213_micbias_voltage
 da7213_of_micbias_lvl(struct snd_soc_component *component, u32 val)
{
 switch (val) {
 case 1600:
  return DA7213_MICBIAS_1_6V;
 case 2200:
  return DA7213_MICBIAS_2_2V;
 case 2500:
  return DA7213_MICBIAS_2_5V;
 case 3000:
  return DA7213_MICBIAS_3_0V;
 default:
  dev_warn(component->dev, "Invalid micbias level\n");
  return DA7213_MICBIAS_2_2V;
 }
}
