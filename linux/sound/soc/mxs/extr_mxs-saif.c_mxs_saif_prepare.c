
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct mxs_saif {scalar_t__ base; } ;


 int BM_SAIF_CTRL_FIFO_ERROR_IRQ_EN ;
 scalar_t__ MXS_SET_ADDR ;
 scalar_t__ SAIF_CTRL ;
 int __raw_writel (int ,scalar_t__) ;
 struct mxs_saif* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mxs_saif_prepare(struct snd_pcm_substream *substream,
      struct snd_soc_dai *cpu_dai)
{
 struct mxs_saif *saif = snd_soc_dai_get_drvdata(cpu_dai);


 __raw_writel(BM_SAIF_CTRL_FIFO_ERROR_IRQ_EN,
  saif->base + SAIF_CTRL + MXS_SET_ADDR);

 return 0;
}
