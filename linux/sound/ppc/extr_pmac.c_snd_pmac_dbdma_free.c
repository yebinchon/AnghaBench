
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pmac {TYPE_1__* pdev; } ;
struct pmac_dbdma {int size; int dma_base; scalar_t__ space; } ;
struct dbdma_cmd {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,unsigned int,scalar_t__,int ) ;

__attribute__((used)) static void snd_pmac_dbdma_free(struct snd_pmac *chip, struct pmac_dbdma *rec)
{
 if (rec->space) {
  unsigned int rsize = sizeof(struct dbdma_cmd) * (rec->size + 1);

  dma_free_coherent(&chip->pdev->dev, rsize, rec->space, rec->dma_base);
 }
}
