
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct adav80x {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ADAV80X_DAC_CTRL1 ;
 unsigned int ADAV80X_DAC_CTRL1_PD ;




 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int adav80x_set_bias_level(struct snd_soc_component *component,
  enum snd_soc_bias_level level)
{
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);
 unsigned int mask = ADAV80X_DAC_CTRL1_PD;

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  regmap_update_bits(adav80x->regmap, ADAV80X_DAC_CTRL1, mask,
   0x00);
  break;
 case 131:
  regmap_update_bits(adav80x->regmap, ADAV80X_DAC_CTRL1, mask,
   mask);
  break;
 }

 return 0;
}
