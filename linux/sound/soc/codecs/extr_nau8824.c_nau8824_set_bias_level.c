
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct nau8824 {int regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int NAU8824_IRQ_EJECT_EN ;
 int NAU8824_IRQ_INSERT_EN ;
 int NAU8824_REG_INTERRUPT_SETTING ;
 int NAU8824_REG_INTERRUPT_SETTING_1 ;




 int nau8824_resume_setup (struct nau8824*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct nau8824* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int nau8824_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct nau8824 *nau8824 = snd_soc_component_get_drvdata(component);

 switch (level) {
 case 130:
  break;

 case 129:
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {

   nau8824_resume_setup(nau8824);
  }
  break;

 case 131:
  regmap_update_bits(nau8824->regmap,
   NAU8824_REG_INTERRUPT_SETTING, 0x3ff, 0x3ff);
  regmap_update_bits(nau8824->regmap,
   NAU8824_REG_INTERRUPT_SETTING_1,
   NAU8824_IRQ_EJECT_EN | NAU8824_IRQ_INSERT_EN, 0);
  break;
 }

 return 0;
}
