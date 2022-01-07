
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
typedef enum da7218_micbias_voltage { ____Placeholder_da7218_micbias_voltage } da7218_micbias_voltage ;


 int DA7218_MICBIAS_1_2V ;
 int DA7218_MICBIAS_1_6V ;
 int DA7218_MICBIAS_1_8V ;
 int DA7218_MICBIAS_2_0V ;
 int DA7218_MICBIAS_2_2V ;
 int DA7218_MICBIAS_2_4V ;
 int DA7218_MICBIAS_2_6V ;
 int DA7218_MICBIAS_2_8V ;
 int DA7218_MICBIAS_3_0V ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static enum da7218_micbias_voltage
 da7218_of_micbias_lvl(struct snd_soc_component *component, u32 val)
{
 switch (val) {
 case 1200:
  return DA7218_MICBIAS_1_2V;
 case 1600:
  return DA7218_MICBIAS_1_6V;
 case 1800:
  return DA7218_MICBIAS_1_8V;
 case 2000:
  return DA7218_MICBIAS_2_0V;
 case 2200:
  return DA7218_MICBIAS_2_2V;
 case 2400:
  return DA7218_MICBIAS_2_4V;
 case 2600:
  return DA7218_MICBIAS_2_6V;
 case 2800:
  return DA7218_MICBIAS_2_8V;
 case 3000:
  return DA7218_MICBIAS_3_0V;
 default:
  dev_warn(component->dev, "Invalid micbias level");
  return DA7218_MICBIAS_1_6V;
 }
}
