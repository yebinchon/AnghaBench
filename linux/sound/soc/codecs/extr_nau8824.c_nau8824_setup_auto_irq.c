
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct nau8824 {TYPE_1__* dapm; struct regmap* regmap; } ;
struct TYPE_2__ {scalar_t__ bias_level; } ;


 int NAU8824_CLK_INTERNAL ;
 int NAU8824_IRQ_EJECT_DIS ;
 int NAU8824_IRQ_EJECT_EN ;
 int NAU8824_IRQ_INSERT_EN ;
 int NAU8824_JD_SLEEP_MODE ;
 int NAU8824_REG_ENA_CTRL ;
 int NAU8824_REG_INTERRUPT_SETTING ;
 int NAU8824_REG_INTERRUPT_SETTING_1 ;
 scalar_t__ SND_SOC_BIAS_PREPARE ;
 int nau8824_config_sysclk (struct nau8824*,int ,int ) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static void nau8824_setup_auto_irq(struct nau8824 *nau8824)
{
 struct regmap *regmap = nau8824->regmap;


 regmap_update_bits(regmap, NAU8824_REG_INTERRUPT_SETTING_1,
  NAU8824_IRQ_INSERT_EN | NAU8824_IRQ_EJECT_EN,
  NAU8824_IRQ_EJECT_EN);
 regmap_update_bits(regmap, NAU8824_REG_INTERRUPT_SETTING,
  NAU8824_IRQ_EJECT_DIS, 0);

 if (nau8824->dapm->bias_level < SND_SOC_BIAS_PREPARE)
  nau8824_config_sysclk(nau8824, NAU8824_CLK_INTERNAL, 0);
 regmap_update_bits(regmap, NAU8824_REG_ENA_CTRL,
  NAU8824_JD_SLEEP_MODE, 0);
}
