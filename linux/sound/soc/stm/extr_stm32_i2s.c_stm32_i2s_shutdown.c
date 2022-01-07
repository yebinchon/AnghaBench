
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_i2s_data {int irq_lock; int * substream; int i2sclk; int regmap; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 scalar_t__ I2S_CGFR_MCKOE ;
 int STM32_I2S_CGFR_REG ;
 int clk_disable_unprepare (int ) ;
 int regmap_update_bits (int ,int ,scalar_t__,unsigned int) ;
 struct stm32_i2s_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void stm32_i2s_shutdown(struct snd_pcm_substream *substream,
          struct snd_soc_dai *cpu_dai)
{
 struct stm32_i2s_data *i2s = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned long flags;

 regmap_update_bits(i2s->regmap, STM32_I2S_CGFR_REG,
      I2S_CGFR_MCKOE, (unsigned int)~I2S_CGFR_MCKOE);

 clk_disable_unprepare(i2s->i2sclk);

 spin_lock_irqsave(&i2s->irq_lock, flags);
 i2s->substream = ((void*)0);
 spin_unlock_irqrestore(&i2s->irq_lock, flags);
}
