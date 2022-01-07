
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct platform_device {size_t id; } ;
struct atmel_ssc_info {int dir_mask; TYPE_1__* ssc; scalar_t__ forced_divider; scalar_t__ rcmr_period; scalar_t__ tcmr_period; scalar_t__ cmr_div; scalar_t__ initialized; struct atmel_pcm_dma_params** dma_params; } ;
struct atmel_pcm_dma_params {int * substream; int * ssc; } ;
struct TYPE_2__ {int clk; int regs; int irq; } ;


 int CR ;
 int CR_SWRST ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SSC_BIT (int ) ;
 int clk_disable (int ) ;
 int free_irq (int ,struct atmel_ssc_info*) ;
 int pr_debug (char*) ;
 struct atmel_ssc_info* ssc_info ;
 int ssc_writel (int ,int ,int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void atmel_ssc_shutdown(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct platform_device *pdev = to_platform_device(dai->dev);
 struct atmel_ssc_info *ssc_p = &ssc_info[pdev->id];
 struct atmel_pcm_dma_params *dma_params;
 int dir, dir_mask;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  dir = 0;
 else
  dir = 1;

 dma_params = ssc_p->dma_params[dir];

 if (dma_params != ((void*)0)) {
  dma_params->ssc = ((void*)0);
  dma_params->substream = ((void*)0);
  ssc_p->dma_params[dir] = ((void*)0);
 }

 dir_mask = 1 << dir;

 ssc_p->dir_mask &= ~dir_mask;
 if (!ssc_p->dir_mask) {
  if (ssc_p->initialized) {
   free_irq(ssc_p->ssc->irq, ssc_p);
   ssc_p->initialized = 0;
  }


  ssc_writel(ssc_p->ssc->regs, CR, SSC_BIT(CR_SWRST));

  ssc_p->cmr_div = ssc_p->tcmr_period = ssc_p->rcmr_period = 0;
  ssc_p->forced_divider = 0;
 }


 pr_debug("atmel_ssc_dai: Stopping clock\n");
 clk_disable(ssc_p->ssc->clk);
}
