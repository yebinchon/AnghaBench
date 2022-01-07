
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct platform_device {size_t id; } ;
struct atmel_ssc_info {TYPE_1__* ssc; struct atmel_pcm_dma_params** dma_params; } ;
struct atmel_pcm_dma_params {TYPE_2__* mask; } ;
struct TYPE_4__ {int ssc_disable; int ssc_enable; } ;
struct TYPE_3__ {int regs; } ;


 int CR ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;



 struct atmel_ssc_info* ssc_info ;
 int ssc_writel (int ,int ,int ) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int atmel_ssc_trigger(struct snd_pcm_substream *substream,
        int cmd, struct snd_soc_dai *dai)
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

 switch (cmd) {
 case 128:
 case 129:
 case 130:
  ssc_writel(ssc_p->ssc->regs, CR, dma_params->mask->ssc_enable);
  break;
 default:
  ssc_writel(ssc_p->ssc->regs, CR, dma_params->mask->ssc_disable);
  break;
 }

 return 0;
}
