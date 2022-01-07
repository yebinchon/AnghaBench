
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adau1701 {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ADAU1701_AUXNPOW ;
 unsigned int ADAU1701_AUXNPOW_VBPD ;
 unsigned int ADAU1701_AUXNPOW_VRPD ;




 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct adau1701* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adau1701_set_bias_level(struct snd_soc_component *component,
  enum snd_soc_bias_level level)
{
 unsigned int mask = ADAU1701_AUXNPOW_VBPD | ADAU1701_AUXNPOW_VRPD;
 struct adau1701 *adau1701 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:

  regmap_update_bits(adau1701->regmap,
       ADAU1701_AUXNPOW, mask, 0x00);
  break;
 case 131:

  regmap_update_bits(adau1701->regmap,
       ADAU1701_AUXNPOW, mask, mask);
  break;
 }

 return 0;
}
