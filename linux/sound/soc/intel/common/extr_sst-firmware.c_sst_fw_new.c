
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_fw {int * dma_buf; int dmable_fw_paddr; int size; int list; void* private; struct sst_dsp* dsp; } ;
struct sst_dsp {int dma_dev; scalar_t__ fw_use_dma; int mutex; int fw_list; int dev; TYPE_1__* ops; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_2__ {int (* parse_fw ) (struct sst_fw*) ;} ;


 int GFP_KERNEL ;
 int dev_err (int ,char*,...) ;
 int * dma_alloc_coherent (int ,int ,int *,int ) ;
 int dma_free_coherent (int ,int ,int *,int ) ;
 int kfree (struct sst_fw*) ;
 struct sst_fw* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (void*,void*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sst_dsp_dma_get_channel (struct sst_dsp*,int ) ;
 int sst_dsp_dma_put_channel (struct sst_dsp*) ;
 int stub1 (struct sst_fw*) ;

struct sst_fw *sst_fw_new(struct sst_dsp *dsp,
 const struct firmware *fw, void *private)
{
 struct sst_fw *sst_fw;
 int err;

 if (!dsp->ops->parse_fw)
  return ((void*)0);

 sst_fw = kzalloc(sizeof(*sst_fw), GFP_KERNEL);
 if (sst_fw == ((void*)0))
  return ((void*)0);

 sst_fw->dsp = dsp;
 sst_fw->private = private;
 sst_fw->size = fw->size;


 sst_fw->dma_buf = dma_alloc_coherent(dsp->dma_dev, sst_fw->size,
    &sst_fw->dmable_fw_paddr, GFP_KERNEL);
 if (!sst_fw->dma_buf) {
  dev_err(dsp->dev, "error: DMA alloc failed\n");
  kfree(sst_fw);
  return ((void*)0);
 }


 memcpy((void *)sst_fw->dma_buf, (void *)fw->data, fw->size);

 if (dsp->fw_use_dma) {
  err = sst_dsp_dma_get_channel(dsp, 0);
  if (err < 0)
   goto chan_err;
 }


 err = dsp->ops->parse_fw(sst_fw);
 if (err < 0) {
  dev_err(dsp->dev, "error: parse fw failed %d\n", err);
  goto parse_err;
 }

 if (dsp->fw_use_dma)
  sst_dsp_dma_put_channel(dsp);

 mutex_lock(&dsp->mutex);
 list_add(&sst_fw->list, &dsp->fw_list);
 mutex_unlock(&dsp->mutex);

 return sst_fw;

parse_err:
 if (dsp->fw_use_dma)
  sst_dsp_dma_put_channel(dsp);
chan_err:
 dma_free_coherent(dsp->dma_dev, sst_fw->size,
    sst_fw->dma_buf,
    sst_fw->dmable_fw_paddr);
 sst_fw->dma_buf = ((void*)0);
 kfree(sst_fw);
 return ((void*)0);
}
