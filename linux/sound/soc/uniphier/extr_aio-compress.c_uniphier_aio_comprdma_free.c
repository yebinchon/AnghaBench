
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_aio_sub {int * compr_area; int compr_bytes; int compr_addr; TYPE_1__* swm; } ;
struct uniphier_aio {struct uniphier_aio_sub* sub; } ;
struct snd_soc_pcm_runtime {int cpu_dai; struct snd_compr* compr; } ;
struct snd_compr {size_t direction; TYPE_2__* card; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* dev; } ;
struct TYPE_3__ {scalar_t__ dir; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ PORT_DIR_OUTPUT ;
 int dma_unmap_single (struct device*,int ,int ,int) ;
 int kfree (int *) ;
 struct uniphier_aio* uniphier_priv (int ) ;

__attribute__((used)) static int uniphier_aio_comprdma_free(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_compr *compr = rtd->compr;
 struct device *dev = compr->card->dev;
 struct uniphier_aio *aio = uniphier_priv(rtd->cpu_dai);
 struct uniphier_aio_sub *sub = &aio->sub[compr->direction];
 int dma_dir = DMA_FROM_DEVICE;

 if (sub->swm->dir == PORT_DIR_OUTPUT)
  dma_dir = DMA_TO_DEVICE;

 dma_unmap_single(dev, sub->compr_addr, sub->compr_bytes, dma_dir);
 kfree(sub->compr_area);
 sub->compr_area = ((void*)0);

 return 0;
}
