
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_aio_sub {size_t compr_bytes; int * compr_area; int compr_addr; TYPE_2__* swm; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; struct snd_compr* compr; } ;
struct snd_compr {size_t direction; TYPE_1__* card; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ dir; } ;
struct TYPE_3__ {struct device* dev; } ;


 size_t AUD_RING_SIZE ;
 int DMA_BIT_MASK (int) ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PORT_DIR_OUTPUT ;
 int dma_map_single (struct device*,int *,size_t,int) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 int kfree (int *) ;
 int * kzalloc (size_t,int ) ;
 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static int uniphier_aio_comprdma_new(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_compr *compr = rtd->compr;
 struct device *dev = compr->card->dev;
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[compr->direction];
 size_t size = AUD_RING_SIZE;
 int dma_dir = DMA_FROM_DEVICE, ret;

 ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(33));
 if (ret)
  return ret;

 sub->compr_area = kzalloc(size, GFP_KERNEL);
 if (!sub->compr_area)
  return -ENOMEM;

 if (sub->swm->dir == PORT_DIR_OUTPUT)
  dma_dir = DMA_TO_DEVICE;

 sub->compr_addr = dma_map_single(dev, sub->compr_area, size, dma_dir);
 if (dma_mapping_error(dev, sub->compr_addr)) {
  kfree(sub->compr_area);
  sub->compr_area = ((void*)0);

  return -ENOMEM;
 }

 sub->compr_bytes = size;

 return 0;
}
