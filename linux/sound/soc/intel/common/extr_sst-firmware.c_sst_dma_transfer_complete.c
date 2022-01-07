
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int dev_dbg (int ,char*) ;

__attribute__((used)) static void sst_dma_transfer_complete(void *arg)
{
 struct sst_dsp *sst = (struct sst_dsp *)arg;

 dev_dbg(sst->dev, "DMA: callback\n");
}
