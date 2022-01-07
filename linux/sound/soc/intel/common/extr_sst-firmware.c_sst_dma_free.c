
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dma {scalar_t__ chip; scalar_t__ ch; } ;


 int dma_release_channel (scalar_t__) ;
 int dw_remove (scalar_t__) ;

__attribute__((used)) static void sst_dma_free(struct sst_dma *dma)
{

 if (dma == ((void*)0))
  return;

 if (dma->ch)
  dma_release_channel(dma->ch);

 if (dma->chip)
  dw_remove(dma->chip);

}
