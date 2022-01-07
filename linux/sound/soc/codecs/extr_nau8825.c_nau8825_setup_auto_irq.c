
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct nau8825 {struct regmap* regmap; } ;


 int NAU8825_CLK_INTERNAL ;
 int NAU8825_ENABLE_ADC ;
 int NAU8825_I2S_MS_MASK ;
 int NAU8825_I2S_MS_MASTER ;
 int NAU8825_I2S_MS_SLAVE ;
 int NAU8825_IRQ_EJECT_EN ;
 int NAU8825_IRQ_HEADSET_COMPLETE_EN ;
 int NAU8825_JACK_DET_DB_BYPASS ;
 int NAU8825_REG_ENA_CTRL ;
 int NAU8825_REG_I2S_PCM_CTRL2 ;
 int NAU8825_REG_INTERRUPT_DIS_CTRL ;
 int NAU8825_REG_INTERRUPT_MASK ;
 int NAU8825_REG_JACK_DET_CTRL ;
 int nau8825_configure_sysclk (struct nau8825*,int ,int ) ;
 int nau8825_restart_jack_detection (struct regmap*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static void nau8825_setup_auto_irq(struct nau8825 *nau8825)
{
 struct regmap *regmap = nau8825->regmap;




 regmap_update_bits(regmap, NAU8825_REG_INTERRUPT_MASK,
  NAU8825_IRQ_HEADSET_COMPLETE_EN | NAU8825_IRQ_EJECT_EN, 0);


 nau8825_configure_sysclk(nau8825, NAU8825_CLK_INTERNAL, 0);


 regmap_update_bits(regmap, NAU8825_REG_ENA_CTRL,
  NAU8825_ENABLE_ADC, NAU8825_ENABLE_ADC);






 regmap_update_bits(regmap, NAU8825_REG_I2S_PCM_CTRL2,
  NAU8825_I2S_MS_MASK, NAU8825_I2S_MS_MASTER);
 regmap_update_bits(regmap, NAU8825_REG_I2S_PCM_CTRL2,
  NAU8825_I2S_MS_MASK, NAU8825_I2S_MS_SLAVE);


 regmap_update_bits(regmap, NAU8825_REG_JACK_DET_CTRL,
  NAU8825_JACK_DET_DB_BYPASS, 0);


 regmap_write(regmap, NAU8825_REG_INTERRUPT_DIS_CTRL, 0);


 nau8825_restart_jack_detection(regmap);
}
