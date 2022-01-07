
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {int regmap; } ;


 int NAU8825_CLK_INTERNAL ;
 int NAU8825_I2S_BLK_DIV_MASK ;
 int NAU8825_I2S_LRC_DIV_MASK ;
 int NAU8825_I2S_MS_MASK ;
 int NAU8825_I2S_MS_SLAVE ;
 int NAU8825_IRQ_RMS_EN ;
 int NAU8825_REG_I2S_PCM_CTRL2 ;
 int NAU8825_REG_IMM_MODE_CTRL ;
 int NAU8825_REG_INTERRUPT_MASK ;
 int nau8825_configure_sysclk (struct nau8825*,int ,int ) ;
 int nau8825_xtalk_clean_adc (struct nau8825*) ;
 int nau8825_xtalk_clean_dac (struct nau8825*) ;
 int nau8825_xtalk_restore (struct nau8825*,int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void nau8825_xtalk_clean(struct nau8825 *nau8825, bool cause_cancel)
{

 nau8825_configure_sysclk(nau8825, NAU8825_CLK_INTERNAL, 0);
 nau8825_xtalk_clean_dac(nau8825);
 nau8825_xtalk_clean_adc(nau8825);

 regmap_write(nau8825->regmap, NAU8825_REG_IMM_MODE_CTRL, 0);

 regmap_update_bits(nau8825->regmap, NAU8825_REG_INTERRUPT_MASK,
  NAU8825_IRQ_RMS_EN, NAU8825_IRQ_RMS_EN);

 regmap_update_bits(nau8825->regmap, NAU8825_REG_I2S_PCM_CTRL2,
  NAU8825_I2S_MS_MASK | NAU8825_I2S_LRC_DIV_MASK |
  NAU8825_I2S_BLK_DIV_MASK, NAU8825_I2S_MS_SLAVE);

 nau8825_xtalk_restore(nau8825, cause_cancel);
}
