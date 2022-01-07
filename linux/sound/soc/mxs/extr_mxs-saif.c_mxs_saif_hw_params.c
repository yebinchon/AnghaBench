
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct mxs_saif {scalar_t__ base; int clk; int mclk; scalar_t__ mclk_in_use; } ;


 int BF_SAIF_CTRL_WORD_LENGTH (int) ;
 int BM_SAIF_CTRL_BITCLK_48XFS_ENABLE ;
 int BM_SAIF_CTRL_READ_MODE ;
 int BM_SAIF_CTRL_WORD_LENGTH ;
 int BM_SAIF_STAT_BUSY ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ SAIF_CTRL ;
 scalar_t__ SAIF_STAT ;



 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_prepare (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_err (int ,char*) ;
 struct mxs_saif* mxs_saif_get_master (struct mxs_saif*) ;
 int mxs_saif_set_clk (struct mxs_saif*,int ,int ) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct mxs_saif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mxs_saif_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *cpu_dai)
{
 struct mxs_saif *saif = snd_soc_dai_get_drvdata(cpu_dai);
 struct mxs_saif *master_saif;
 u32 scr, stat;
 int ret;

 master_saif = mxs_saif_get_master(saif);
 if (!master_saif)
  return -EINVAL;


 if (!saif->mclk && saif->mclk_in_use) {
  dev_err(cpu_dai->dev, "set mclk first\n");
  return -EINVAL;
 }

 stat = __raw_readl(saif->base + SAIF_STAT);
 if (!saif->mclk_in_use && (stat & BM_SAIF_STAT_BUSY)) {
  dev_err(cpu_dai->dev, "error: busy\n");
  return -EBUSY;
 }






 ret = mxs_saif_set_clk(saif, saif->mclk, params_rate(params));
 if (ret) {
  dev_err(cpu_dai->dev, "unable to get proper clk\n");
  return ret;
 }

 if (saif != master_saif) {







  clk_enable(saif->clk);
  ret = clk_set_rate(saif->clk, 24000000);
  clk_disable(saif->clk);
  if (ret)
   return ret;

  ret = clk_prepare(master_saif->clk);
  if (ret)
   return ret;
 }

 scr = __raw_readl(saif->base + SAIF_CTRL);

 scr &= ~BM_SAIF_CTRL_WORD_LENGTH;
 scr &= ~BM_SAIF_CTRL_BITCLK_48XFS_ENABLE;
 switch (params_format(params)) {
 case 130:
  scr |= BF_SAIF_CTRL_WORD_LENGTH(0);
  break;
 case 129:
  scr |= BF_SAIF_CTRL_WORD_LENGTH(4);
  scr |= BM_SAIF_CTRL_BITCLK_48XFS_ENABLE;
  break;
 case 128:
  scr |= BF_SAIF_CTRL_WORD_LENGTH(8);
  scr |= BM_SAIF_CTRL_BITCLK_48XFS_ENABLE;
  break;
 default:
  return -EINVAL;
 }


 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {

  scr &= ~BM_SAIF_CTRL_READ_MODE;
 } else {

  scr |= BM_SAIF_CTRL_READ_MODE;
 }

 __raw_writel(scr, saif->base + SAIF_CTRL);
 return 0;
}
