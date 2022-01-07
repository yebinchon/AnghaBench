
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adau1373 {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ADAU1373_PWDN_CTRL3 ;
 int ADAU1373_PWDN_CTRL3_PWR_EN ;




 int regmap_update_bits (int ,int ,int ,int ) ;
 struct adau1373* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1373_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct adau1373 *adau1373 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  regmap_update_bits(adau1373->regmap, ADAU1373_PWDN_CTRL3,
   ADAU1373_PWDN_CTRL3_PWR_EN, ADAU1373_PWDN_CTRL3_PWR_EN);
  break;
 case 131:
  regmap_update_bits(adau1373->regmap, ADAU1373_PWDN_CTRL3,
   ADAU1373_PWDN_CTRL3_PWR_EN, 0);
  break;
 }
 return 0;
}
