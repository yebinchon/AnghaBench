
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_dai {int id; } ;
struct snd_pcm_substream {int dummy; } ;
struct kirkwood_dma_data {int ctl_rec; scalar_t__ io; } ;


 int EINVAL ;
 int KIRKWOOD_INT_CAUSE_REC_BYTES ;
 scalar_t__ KIRKWOOD_INT_MASK ;
 scalar_t__ KIRKWOOD_RECCTL ;
 int KIRKWOOD_RECCTL_ENABLE_MASK ;
 int KIRKWOOD_RECCTL_I2S_EN ;
 int KIRKWOOD_RECCTL_MUTE ;
 int KIRKWOOD_RECCTL_PAUSE ;
 int KIRKWOOD_RECCTL_SPDIF_EN ;






 int readl (scalar_t__) ;
 struct kirkwood_dma_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int kirkwood_i2s_rec_trigger(struct snd_pcm_substream *substream,
    int cmd, struct snd_soc_dai *dai)
{
 struct kirkwood_dma_data *priv = snd_soc_dai_get_drvdata(dai);
 uint32_t ctl, value;

 value = readl(priv->io + KIRKWOOD_RECCTL);

 switch (cmd) {
 case 130:

  ctl = priv->ctl_rec;
  if (dai->id == 0)
   ctl &= ~KIRKWOOD_RECCTL_SPDIF_EN;
  else
   ctl &= ~KIRKWOOD_RECCTL_I2S_EN;

  value = ctl & ~KIRKWOOD_RECCTL_ENABLE_MASK;
  writel(value, priv->io + KIRKWOOD_RECCTL);


  value = readl(priv->io + KIRKWOOD_INT_MASK);
  value |= KIRKWOOD_INT_CAUSE_REC_BYTES;
  writel(value, priv->io + KIRKWOOD_INT_MASK);


  writel(ctl, priv->io + KIRKWOOD_RECCTL);
  break;

 case 129:

  value = readl(priv->io + KIRKWOOD_RECCTL);
  value |= KIRKWOOD_RECCTL_PAUSE | KIRKWOOD_RECCTL_MUTE;
  writel(value, priv->io + KIRKWOOD_RECCTL);

  value = readl(priv->io + KIRKWOOD_INT_MASK);
  value &= ~KIRKWOOD_INT_CAUSE_REC_BYTES;
  writel(value, priv->io + KIRKWOOD_INT_MASK);


  value = readl(priv->io + KIRKWOOD_RECCTL);
  value &= ~KIRKWOOD_RECCTL_ENABLE_MASK;
  writel(value, priv->io + KIRKWOOD_RECCTL);
  break;

 case 133:
 case 128:
  value = readl(priv->io + KIRKWOOD_RECCTL);
  value |= KIRKWOOD_RECCTL_PAUSE | KIRKWOOD_RECCTL_MUTE;
  writel(value, priv->io + KIRKWOOD_RECCTL);
  break;

 case 131:
 case 132:
  value = readl(priv->io + KIRKWOOD_RECCTL);
  value &= ~(KIRKWOOD_RECCTL_PAUSE | KIRKWOOD_RECCTL_MUTE);
  writel(value, priv->io + KIRKWOOD_RECCTL);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
