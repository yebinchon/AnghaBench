
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev; int type; } ;
struct snd_dma_buffer {size_t bytes; int area; int addr; int * private_data; TYPE_1__ dev; } ;
struct snd_pcm_substream {TYPE_3__* pcm; struct snd_dma_buffer dma_buffer; } ;
struct gen_pool {int dummy; } ;
struct TYPE_8__ {size_t buffer_bytes_max; } ;
struct TYPE_7__ {TYPE_2__* card; } ;
struct TYPE_6__ {int dev; } ;


 int ENOMEM ;
 int SNDRV_DMA_TYPE_DEV ;
 int gen_pool_dma_alloc (struct gen_pool*,size_t,int *) ;
 TYPE_4__* mmp_pcm_hardware ;
 struct gen_pool* sram_get_gpool (char*) ;

__attribute__((used)) static int mmp_pcm_preallocate_dma_buffer(struct snd_pcm_substream *substream,
        int stream)
{
 struct snd_dma_buffer *buf = &substream->dma_buffer;
 size_t size = mmp_pcm_hardware[stream].buffer_bytes_max;
 struct gen_pool *gpool;

 buf->dev.type = SNDRV_DMA_TYPE_DEV;
 buf->dev.dev = substream->pcm->card->dev;
 buf->private_data = ((void*)0);

 gpool = sram_get_gpool("asram");
 if (!gpool)
  return -ENOMEM;

 buf->area = gen_pool_dma_alloc(gpool, size, &buf->addr);
 if (!buf->area)
  return -ENOMEM;
 buf->bytes = size;
 return 0;
}
