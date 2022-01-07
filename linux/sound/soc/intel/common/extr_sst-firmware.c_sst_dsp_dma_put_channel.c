
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {struct sst_dma* dma; } ;
struct sst_dma {int * ch; } ;


 int dma_release_channel (int *) ;

void sst_dsp_dma_put_channel(struct sst_dsp *dsp)
{
 struct sst_dma *dma = dsp->dma;

 if (!dma->ch)
  return;

 dma_release_channel(dma->ch);
 dma->ch = ((void*)0);
}
