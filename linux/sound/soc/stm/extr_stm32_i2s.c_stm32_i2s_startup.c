
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_i2s_data {int fmt; int regmap; int i2sclk; int irq_lock; struct snd_pcm_substream* substream; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int runtime; } ;


 int I2S_IFCR_MASK ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SND_SOC_DAIFMT_DSP_A ;
 int SND_SOC_DAIFMT_FORMAT_MASK ;
 int STM32_I2S_IFCR_REG ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int snd_pcm_hw_constraint_single (int ,int ,int) ;
 struct stm32_i2s_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int stm32_i2s_startup(struct snd_pcm_substream *substream,
        struct snd_soc_dai *cpu_dai)
{
 struct stm32_i2s_data *i2s = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&i2s->irq_lock, flags);
 i2s->substream = substream;
 spin_unlock_irqrestore(&i2s->irq_lock, flags);

 if ((i2s->fmt & SND_SOC_DAIFMT_FORMAT_MASK) != SND_SOC_DAIFMT_DSP_A)
  snd_pcm_hw_constraint_single(substream->runtime,
          SNDRV_PCM_HW_PARAM_CHANNELS, 2);

 ret = clk_prepare_enable(i2s->i2sclk);
 if (ret < 0) {
  dev_err(cpu_dai->dev, "Failed to enable clock: %d\n", ret);
  return ret;
 }

 return regmap_write_bits(i2s->regmap, STM32_I2S_IFCR_REG,
     I2S_IFCR_MASK, I2S_IFCR_MASK);
}
