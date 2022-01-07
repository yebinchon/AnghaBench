
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_soc_dai {int id; int dev; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int no_period_wakeup; } ;
struct kirkwood_dma_data {int ctl_play; scalar_t__ io; } ;


 int EINVAL ;
 int KIRKWOOD_INT_CAUSE_PLAY_BYTES ;
 scalar_t__ KIRKWOOD_INT_MASK ;
 scalar_t__ KIRKWOOD_PLAYCTL ;
 int KIRKWOOD_PLAYCTL_ENABLE_MASK ;
 int KIRKWOOD_PLAYCTL_I2S_EN ;
 int KIRKWOOD_PLAYCTL_I2S_MUTE ;
 int KIRKWOOD_PLAYCTL_PAUSE ;
 int KIRKWOOD_PLAYCTL_PLAY_BUSY ;
 int KIRKWOOD_PLAYCTL_SPDIF_EN ;
 int KIRKWOOD_PLAYCTL_SPDIF_MUTE ;






 int dev_notice (int ,char*,int) ;
 int kirkwood_i2s_play_mute (int) ;
 int readl (scalar_t__) ;
 struct kirkwood_dma_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int kirkwood_i2s_play_trigger(struct snd_pcm_substream *substream,
    int cmd, struct snd_soc_dai *dai)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct kirkwood_dma_data *priv = snd_soc_dai_get_drvdata(dai);
 uint32_t ctl, value;

 ctl = readl(priv->io + KIRKWOOD_PLAYCTL);
 if ((ctl & KIRKWOOD_PLAYCTL_ENABLE_MASK) == 0) {
  unsigned timeout = 5000;





  do {
   value = ctl;
   ctl = readl(priv->io + KIRKWOOD_PLAYCTL);
   if (!((ctl | value) & KIRKWOOD_PLAYCTL_PLAY_BUSY))
    break;
   udelay(1);
  } while (timeout--);

  if ((ctl | value) & KIRKWOOD_PLAYCTL_PLAY_BUSY)
   dev_notice(dai->dev, "timed out waiting for busy to deassert: %08x\n",
       ctl);
 }

 switch (cmd) {
 case 130:

  ctl = priv->ctl_play;
  if (dai->id == 0)
   ctl &= ~KIRKWOOD_PLAYCTL_SPDIF_EN;
  else
   ctl &= ~KIRKWOOD_PLAYCTL_I2S_EN;
  ctl = kirkwood_i2s_play_mute(ctl);
  value = ctl & ~KIRKWOOD_PLAYCTL_ENABLE_MASK;
  writel(value, priv->io + KIRKWOOD_PLAYCTL);


  if (!runtime->no_period_wakeup) {
   value = readl(priv->io + KIRKWOOD_INT_MASK);
   value |= KIRKWOOD_INT_CAUSE_PLAY_BYTES;
   writel(value, priv->io + KIRKWOOD_INT_MASK);
  }


  writel(ctl, priv->io + KIRKWOOD_PLAYCTL);
  break;

 case 129:

  ctl |= KIRKWOOD_PLAYCTL_PAUSE | KIRKWOOD_PLAYCTL_I2S_MUTE |
    KIRKWOOD_PLAYCTL_SPDIF_MUTE;
  writel(ctl, priv->io + KIRKWOOD_PLAYCTL);

  value = readl(priv->io + KIRKWOOD_INT_MASK);
  value &= ~KIRKWOOD_INT_CAUSE_PLAY_BYTES;
  writel(value, priv->io + KIRKWOOD_INT_MASK);


  ctl &= ~KIRKWOOD_PLAYCTL_ENABLE_MASK;
  writel(ctl, priv->io + KIRKWOOD_PLAYCTL);
  break;

 case 133:
 case 128:
  ctl |= KIRKWOOD_PLAYCTL_PAUSE | KIRKWOOD_PLAYCTL_I2S_MUTE |
    KIRKWOOD_PLAYCTL_SPDIF_MUTE;
  writel(ctl, priv->io + KIRKWOOD_PLAYCTL);
  break;

 case 131:
 case 132:
  ctl &= ~(KIRKWOOD_PLAYCTL_PAUSE | KIRKWOOD_PLAYCTL_I2S_MUTE |
    KIRKWOOD_PLAYCTL_SPDIF_MUTE);
  ctl = kirkwood_i2s_play_mute(ctl);
  writel(ctl, priv->io + KIRKWOOD_PLAYCTL);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
