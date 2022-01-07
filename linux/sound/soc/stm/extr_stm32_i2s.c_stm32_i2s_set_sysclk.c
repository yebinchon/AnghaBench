
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_i2s_data {unsigned int mclk_rate; int regmap; } ;
struct snd_soc_dai {int dev; } ;


 int I2S_CGFR_MCKOE ;
 int SND_SOC_CLOCK_OUT ;
 int STM32_I2S_CGFR_REG ;
 scalar_t__ STM32_I2S_IS_MASTER (struct stm32_i2s_data*) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct stm32_i2s_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int stm32_i2s_set_sysclk(struct snd_soc_dai *cpu_dai,
    int clk_id, unsigned int freq, int dir)
{
 struct stm32_i2s_data *i2s = snd_soc_dai_get_drvdata(cpu_dai);

 dev_dbg(cpu_dai->dev, "I2S MCLK frequency is %uHz\n", freq);

 if ((dir == SND_SOC_CLOCK_OUT) && STM32_I2S_IS_MASTER(i2s)) {
  i2s->mclk_rate = freq;


  return regmap_update_bits(i2s->regmap, STM32_I2S_CGFR_REG,
       I2S_CGFR_MCKOE, I2S_CGFR_MCKOE);
 }

 return 0;
}
