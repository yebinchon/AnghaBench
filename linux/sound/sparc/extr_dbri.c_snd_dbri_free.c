
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_dbri {int dma_dvma; scalar_t__ dma; TYPE_1__* op; int regs_size; scalar_t__ regs; scalar_t__ irq; } ;
struct dbri_dma {int dummy; } ;
struct TYPE_2__ {int dev; int * resource; } ;


 int D_GEN ;
 int dbri_reset (struct snd_dbri*) ;
 int dma_free_coherent (int *,int,void*,int ) ;
 int dprintk (int ,char*) ;
 int free_irq (scalar_t__,struct snd_dbri*) ;
 int of_iounmap (int *,scalar_t__,int ) ;

__attribute__((used)) static void snd_dbri_free(struct snd_dbri *dbri)
{
 dprintk(D_GEN, "snd_dbri_free\n");
 dbri_reset(dbri);

 if (dbri->irq)
  free_irq(dbri->irq, dbri);

 if (dbri->regs)
  of_iounmap(&dbri->op->resource[0], dbri->regs, dbri->regs_size);

 if (dbri->dma)
  dma_free_coherent(&dbri->op->dev,
      sizeof(struct dbri_dma),
      (void *)dbri->dma, dbri->dma_dvma);
}
