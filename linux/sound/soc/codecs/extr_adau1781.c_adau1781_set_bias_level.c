
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adau {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ADAU1781_DIG_PWDN1 ;
 int ADAU17X1_CLOCK_CONTROL ;
 int ADAU17X1_CLOCK_CONTROL_SYSCLK_EN ;




 int regmap_update_bits (int ,int ,int,int) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1781_set_bias_level(struct snd_soc_component *component,
  enum snd_soc_bias_level level)
{
 struct adau *adau = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  regmap_update_bits(adau->regmap, ADAU17X1_CLOCK_CONTROL,
   ADAU17X1_CLOCK_CONTROL_SYSCLK_EN,
   ADAU17X1_CLOCK_CONTROL_SYSCLK_EN);


  regmap_update_bits(adau->regmap, ADAU1781_DIG_PWDN1, 0x8, 0x8);
  break;
 case 131:
  regmap_update_bits(adau->regmap, ADAU1781_DIG_PWDN1, 0xc, 0x0);
  regmap_update_bits(adau->regmap, ADAU17X1_CLOCK_CONTROL,
   ADAU17X1_CLOCK_CONTROL_SYSCLK_EN, 0);
  break;
 }

 return 0;
}
