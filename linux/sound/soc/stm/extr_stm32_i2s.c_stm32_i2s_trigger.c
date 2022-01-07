
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct stm32_i2s_data {int refcount; int regmap; int lock_fd; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int EINVAL ;
 unsigned int I2S_CFG1_RXDMAEN ;
 unsigned int I2S_CFG1_TXDMAEN ;
 int I2S_CR1_CSTART ;
 unsigned int I2S_CR1_SPE ;
 unsigned int I2S_IER_OVRIE ;
 unsigned int I2S_IER_TIFREIE ;
 unsigned int I2S_IER_UDRIE ;
 int I2S_IFCR_MASK ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int STM32_I2S_CFG1_REG ;
 int STM32_I2S_CR1_REG ;
 int STM32_I2S_IER_REG ;
 int STM32_I2S_IFCR_REG ;
 int STM32_I2S_IS_MASTER (struct stm32_i2s_data*) ;
 int STM32_I2S_IS_SLAVE (struct stm32_i2s_data*) ;
 int STM32_I2S_TXDR_REG ;
 int dev_dbg (int ,char*,char*) ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int regmap_write (int ,int ,int ) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 struct stm32_i2s_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int stm32_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
        struct snd_soc_dai *cpu_dai)
{
 struct stm32_i2s_data *i2s = snd_soc_dai_get_drvdata(cpu_dai);
 bool playback_flg = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 u32 cfg1_mask, ier;
 int ret;

 switch (cmd) {
 case 130:
 case 131:
 case 132:

  dev_dbg(cpu_dai->dev, "start I2S %s\n",
   playback_flg ? "playback" : "capture");

  cfg1_mask = I2S_CFG1_RXDMAEN | I2S_CFG1_TXDMAEN;
  regmap_update_bits(i2s->regmap, STM32_I2S_CFG1_REG,
       cfg1_mask, cfg1_mask);

  ret = regmap_update_bits(i2s->regmap, STM32_I2S_CR1_REG,
      I2S_CR1_SPE, I2S_CR1_SPE);
  if (ret < 0) {
   dev_err(cpu_dai->dev, "Error %d enabling I2S\n", ret);
   return ret;
  }

  ret = regmap_write_bits(i2s->regmap, STM32_I2S_CR1_REG,
     I2S_CR1_CSTART, I2S_CR1_CSTART);
  if (ret < 0) {
   dev_err(cpu_dai->dev, "Error %d starting I2S\n", ret);
   return ret;
  }

  regmap_write_bits(i2s->regmap, STM32_I2S_IFCR_REG,
      I2S_IFCR_MASK, I2S_IFCR_MASK);

  spin_lock(&i2s->lock_fd);
  i2s->refcount++;
  if (playback_flg) {
   ier = I2S_IER_UDRIE;
  } else {
   ier = I2S_IER_OVRIE;

   if (STM32_I2S_IS_MASTER(i2s) && i2s->refcount == 1)

    regmap_write(i2s->regmap,
          STM32_I2S_TXDR_REG, 0);
  }
  spin_unlock(&i2s->lock_fd);

  if (STM32_I2S_IS_SLAVE(i2s))
   ier |= I2S_IER_TIFREIE;

  regmap_update_bits(i2s->regmap, STM32_I2S_IER_REG, ier, ier);
  break;
 case 129:
 case 128:
 case 133:
  dev_dbg(cpu_dai->dev, "stop I2S %s\n",
   playback_flg ? "playback" : "capture");

  if (playback_flg)
   regmap_update_bits(i2s->regmap, STM32_I2S_IER_REG,
        I2S_IER_UDRIE,
        (unsigned int)~I2S_IER_UDRIE);
  else
   regmap_update_bits(i2s->regmap, STM32_I2S_IER_REG,
        I2S_IER_OVRIE,
        (unsigned int)~I2S_IER_OVRIE);

  spin_lock(&i2s->lock_fd);
  i2s->refcount--;
  if (i2s->refcount) {
   spin_unlock(&i2s->lock_fd);
   break;
  }

  ret = regmap_update_bits(i2s->regmap, STM32_I2S_CR1_REG,
      I2S_CR1_SPE, 0);
  if (ret < 0) {
   dev_err(cpu_dai->dev, "Error %d disabling I2S\n", ret);
   spin_unlock(&i2s->lock_fd);
   return ret;
  }
  spin_unlock(&i2s->lock_fd);

  cfg1_mask = I2S_CFG1_RXDMAEN | I2S_CFG1_TXDMAEN;
  regmap_update_bits(i2s->regmap, STM32_I2S_CFG1_REG,
       cfg1_mask, 0);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
