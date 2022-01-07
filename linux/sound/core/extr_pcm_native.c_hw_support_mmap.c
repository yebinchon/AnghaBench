
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; int dev; } ;
struct TYPE_10__ {TYPE_4__ dev; } ;
struct snd_pcm_substream {TYPE_5__ dma_buffer; TYPE_3__* ops; TYPE_2__* runtime; } ;
struct TYPE_8__ {scalar_t__ mmap; } ;
struct TYPE_6__ {int info; } ;
struct TYPE_7__ {TYPE_1__ hw; } ;


 scalar_t__ SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_INFO_MMAP ;
 int dma_can_mmap (int ) ;

__attribute__((used)) static bool hw_support_mmap(struct snd_pcm_substream *substream)
{
 if (!(substream->runtime->hw.info & SNDRV_PCM_INFO_MMAP))
  return 0;

 if (substream->ops->mmap ||
     substream->dma_buffer.dev.type != SNDRV_DMA_TYPE_DEV)
  return 1;

 return dma_can_mmap(substream->dma_buffer.dev.dev);
}
