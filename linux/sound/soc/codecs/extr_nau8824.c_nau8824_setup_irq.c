
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8824 {int regmap; } ;


 int NAU8824_IRQ_EJECT_EN ;
 int NAU8824_IRQ_INSERT_EN ;
 int NAU8824_JD_SLEEP_MODE ;
 int NAU8824_REG_ENA_CTRL ;
 int NAU8824_REG_INTERRUPT_SETTING ;
 int NAU8824_REG_INTERRUPT_SETTING_1 ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int nau8824_setup_irq(struct nau8824 *nau8824)
{

 regmap_update_bits(nau8824->regmap, NAU8824_REG_ENA_CTRL,
  NAU8824_JD_SLEEP_MODE, NAU8824_JD_SLEEP_MODE);
 regmap_update_bits(nau8824->regmap,
  NAU8824_REG_INTERRUPT_SETTING, 0x3ff, 0x3ff);
 regmap_update_bits(nau8824->regmap, NAU8824_REG_INTERRUPT_SETTING_1,
  NAU8824_IRQ_EJECT_EN | NAU8824_IRQ_INSERT_EN, 0);

 return 0;
}
