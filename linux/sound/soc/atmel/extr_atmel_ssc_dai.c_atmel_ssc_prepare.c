
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct platform_device {size_t id; } ;
struct atmel_ssc_info {TYPE_2__* ssc; struct atmel_pcm_dma_params** dma_params; } ;
struct atmel_pcm_dma_params {TYPE_1__* mask; } ;
struct TYPE_4__ {int regs; } ;
struct TYPE_3__ {int ssc_error; int ssc_disable; } ;


 int CR ;
 int IDR ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SR ;
 int pr_debug (char*,char*,int ) ;
 struct atmel_ssc_info* ssc_info ;
 int ssc_readl (int ,int ) ;
 int ssc_writel (int ,int ,int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int atmel_ssc_prepare(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct platform_device *pdev = to_platform_device(dai->dev);
 struct atmel_ssc_info *ssc_p = &ssc_info[pdev->id];
 struct atmel_pcm_dma_params *dma_params;
 int dir;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  dir = 0;
 else
  dir = 1;

 dma_params = ssc_p->dma_params[dir];

 ssc_writel(ssc_p->ssc->regs, CR, dma_params->mask->ssc_disable);
 ssc_writel(ssc_p->ssc->regs, IDR, dma_params->mask->ssc_error);

 pr_debug("%s enabled SSC_SR=0x%08x\n",
   dir ? "receive" : "transmit",
   ssc_readl(ssc_p->ssc->regs, SR));
 return 0;
}
