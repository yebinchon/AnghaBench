
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_dsp {int dma; TYPE_1__* ops; int irq; } ;
struct TYPE_2__ {int (* free ) (struct sst_dsp*) ;} ;


 int free_irq (int ,struct sst_dsp*) ;
 int sst_dma_free (int ) ;
 int stub1 (struct sst_dsp*) ;

void sst_dsp_free(struct sst_dsp *sst)
{
 free_irq(sst->irq, sst);
 if (sst->ops->free)
  sst->ops->free(sst);

 sst_dma_free(sst->dma);
}
