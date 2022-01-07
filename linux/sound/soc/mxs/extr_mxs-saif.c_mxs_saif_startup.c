
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct mxs_saif {int clk; scalar_t__ base; scalar_t__ fifo_overrun; scalar_t__ fifo_underrun; } ;


 int BM_SAIF_CTRL_CLKGATE ;
 int BM_SAIF_CTRL_SFTRST ;
 scalar_t__ MXS_CLR_ADDR ;
 scalar_t__ SAIF_CTRL ;
 int __raw_writel (int ,scalar_t__) ;
 int clk_prepare (int ) ;
 struct mxs_saif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mxs_saif_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *cpu_dai)
{
 struct mxs_saif *saif = snd_soc_dai_get_drvdata(cpu_dai);
 int ret;


 saif->fifo_underrun = 0;
 saif->fifo_overrun = 0;


 __raw_writel(BM_SAIF_CTRL_SFTRST,
  saif->base + SAIF_CTRL + MXS_CLR_ADDR);


 __raw_writel(BM_SAIF_CTRL_CLKGATE,
  saif->base + SAIF_CTRL + MXS_CLR_ADDR);

 ret = clk_prepare(saif->clk);
 if (ret)
  return ret;

 return 0;
}
