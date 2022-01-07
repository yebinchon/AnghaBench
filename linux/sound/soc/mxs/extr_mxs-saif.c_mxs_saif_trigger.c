
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int stream; } ;
struct mxs_saif {int ongoing; int cur_rate; int state; int clk; scalar_t__ base; int mclk_in_use; int dev; } ;


 int BM_SAIF_CTRL_RUN ;
 int EINVAL ;
 scalar_t__ MXS_CLR_ADDR ;
 int MXS_SAIF_STATE_RUNNING ;
 int MXS_SAIF_STATE_STOPPED ;
 scalar_t__ MXS_SET_ADDR ;
 scalar_t__ SAIF_CTRL ;
 scalar_t__ SAIF_DATA ;
 scalar_t__ SAIF_STAT ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 int USEC_PER_SEC ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 struct mxs_saif* mxs_saif_get_master (struct mxs_saif*) ;
 struct mxs_saif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int udelay (int) ;

__attribute__((used)) static int mxs_saif_trigger(struct snd_pcm_substream *substream, int cmd,
    struct snd_soc_dai *cpu_dai)
{
 struct mxs_saif *saif = snd_soc_dai_get_drvdata(cpu_dai);
 struct mxs_saif *master_saif;
 u32 delay;
 int ret;

 master_saif = mxs_saif_get_master(saif);
 if (!master_saif)
  return -EINVAL;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (saif->state == MXS_SAIF_STATE_RUNNING)
   return 0;

  dev_dbg(cpu_dai->dev, "start\n");

  ret = clk_enable(master_saif->clk);
  if (ret) {
   dev_err(saif->dev, "Failed to enable master clock\n");
   return ret;
  }





  if (saif != master_saif) {
   ret = clk_enable(saif->clk);
   if (ret) {
    dev_err(saif->dev, "Failed to enable master clock\n");
    clk_disable(master_saif->clk);
    return ret;
   }

   __raw_writel(BM_SAIF_CTRL_RUN,
    saif->base + SAIF_CTRL + MXS_SET_ADDR);
  }

  if (!master_saif->mclk_in_use)
   __raw_writel(BM_SAIF_CTRL_RUN,
    master_saif->base + SAIF_CTRL + MXS_SET_ADDR);

  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {







   __raw_writel(0, saif->base + SAIF_DATA);
   __raw_writel(0, saif->base + SAIF_DATA);
  } else {







   __raw_readl(saif->base + SAIF_DATA);
   __raw_readl(saif->base + SAIF_DATA);
  }

  master_saif->ongoing = 1;
  saif->state = MXS_SAIF_STATE_RUNNING;

  dev_dbg(saif->dev, "CTRL 0x%x STAT 0x%x\n",
   __raw_readl(saif->base + SAIF_CTRL),
   __raw_readl(saif->base + SAIF_STAT));

  dev_dbg(master_saif->dev, "CTRL 0x%x STAT 0x%x\n",
   __raw_readl(master_saif->base + SAIF_CTRL),
   __raw_readl(master_saif->base + SAIF_STAT));
  break;
 case 128:
 case 129:
 case 133:
  if (saif->state == MXS_SAIF_STATE_STOPPED)
   return 0;

  dev_dbg(cpu_dai->dev, "stop\n");


  delay = USEC_PER_SEC / master_saif->cur_rate;

  if (!master_saif->mclk_in_use) {
   __raw_writel(BM_SAIF_CTRL_RUN,
    master_saif->base + SAIF_CTRL + MXS_CLR_ADDR);
   udelay(delay);
  }
  clk_disable(master_saif->clk);

  if (saif != master_saif) {
   __raw_writel(BM_SAIF_CTRL_RUN,
    saif->base + SAIF_CTRL + MXS_CLR_ADDR);
   udelay(delay);
   clk_disable(saif->clk);
  }

  master_saif->ongoing = 0;
  saif->state = MXS_SAIF_STATE_STOPPED;

  break;
 default:
  return -EINVAL;
 }

 return 0;
}
