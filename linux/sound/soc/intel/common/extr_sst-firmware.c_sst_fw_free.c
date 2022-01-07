
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_fw {int dmable_fw_paddr; scalar_t__ dma_buf; int size; int list; struct sst_dsp* dsp; } ;
struct sst_dsp {int dma_dev; int mutex; } ;


 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 int kfree (struct sst_fw*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void sst_fw_free(struct sst_fw *sst_fw)
{
 struct sst_dsp *dsp = sst_fw->dsp;

 mutex_lock(&dsp->mutex);
 list_del(&sst_fw->list);
 mutex_unlock(&dsp->mutex);

 if (sst_fw->dma_buf)
  dma_free_coherent(dsp->dma_dev, sst_fw->size, sst_fw->dma_buf,
   sst_fw->dmable_fw_paddr);
 kfree(sst_fw);
}
