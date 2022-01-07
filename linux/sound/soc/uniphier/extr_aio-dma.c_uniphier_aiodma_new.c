
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_pcm* pcm; TYPE_2__* card; } ;
struct snd_pcm {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int buffer_bytes_max; } ;
struct TYPE_5__ {TYPE_1__* snd_card; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DMA_BIT_MASK (int) ;
 int SNDRV_DMA_TYPE_DEV ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,struct device*,int ,int ) ;
 TYPE_3__ uniphier_aiodma_hw ;

__attribute__((used)) static int uniphier_aiodma_new(struct snd_soc_pcm_runtime *rtd)
{
 struct device *dev = rtd->card->snd_card->dev;
 struct snd_pcm *pcm = rtd->pcm;
 int ret;

 ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(33));
 if (ret)
  return ret;

 snd_pcm_lib_preallocate_pages_for_all(pcm,
  SNDRV_DMA_TYPE_DEV, dev,
  uniphier_aiodma_hw.buffer_bytes_max,
  uniphier_aiodma_hw.buffer_bytes_max);
 return 0;
}
