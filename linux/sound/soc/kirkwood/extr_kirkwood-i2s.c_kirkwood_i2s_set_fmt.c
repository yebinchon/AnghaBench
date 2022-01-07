
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct kirkwood_dma_data {scalar_t__ io; } ;


 int EINVAL ;
 unsigned long KIRKWOOD_I2S_CTL_I2S ;
 unsigned long KIRKWOOD_I2S_CTL_JUST_MASK ;
 unsigned long KIRKWOOD_I2S_CTL_LJ ;
 unsigned long KIRKWOOD_I2S_CTL_RJ ;
 scalar_t__ KIRKWOOD_I2S_PLAYCTL ;
 scalar_t__ KIRKWOOD_I2S_RECCTL ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned long readl (scalar_t__) ;
 struct kirkwood_dma_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int kirkwood_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
  unsigned int fmt)
{
 struct kirkwood_dma_data *priv = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned long mask;
 unsigned long value;

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 128:
  mask = KIRKWOOD_I2S_CTL_RJ;
  break;
 case 129:
  mask = KIRKWOOD_I2S_CTL_LJ;
  break;
 case 130:
  mask = KIRKWOOD_I2S_CTL_I2S;
  break;
 default:
  return -EINVAL;
 }





 value = readl(priv->io+KIRKWOOD_I2S_PLAYCTL);
 value &= ~KIRKWOOD_I2S_CTL_JUST_MASK;
 value |= mask;
 writel(value, priv->io+KIRKWOOD_I2S_PLAYCTL);

 value = readl(priv->io+KIRKWOOD_I2S_RECCTL);
 value &= ~KIRKWOOD_I2S_CTL_JUST_MASK;
 value |= mask;
 writel(value, priv->io+KIRKWOOD_I2S_RECCTL);

 return 0;
}
