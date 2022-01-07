
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adau {int regmap; } ;
typedef enum adau17x1_micbias_voltage { ____Placeholder_adau17x1_micbias_voltage } adau17x1_micbias_voltage ;


 int ADAU17X1_MICBIAS ;


 int EINVAL ;
 int regmap_write (int ,int ,int) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int adau17x1_set_micbias_voltage(struct snd_soc_component *component,
 enum adau17x1_micbias_voltage micbias)
{
 struct adau *adau = snd_soc_component_get_drvdata(component);

 switch (micbias) {
 case 128:
 case 129:
  break;
 default:
  return -EINVAL;
 }

 return regmap_write(adau->regmap, ADAU17X1_MICBIAS, micbias << 2);
}
