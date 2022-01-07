
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_module_runtime_context {int buffer; int dma_buffer; } ;
struct sst_module_runtime {scalar_t__ persistent_offset; int id; struct sst_module* module; struct sst_dsp* dsp; } ;
struct sst_module {int persistent_size; } ;
struct TYPE_2__ {scalar_t__ lpe; scalar_t__ lpe_base; } ;
struct sst_dsp {int mutex; TYPE_1__ addr; int dev; scalar_t__ fw_use_dma; int dma_dev; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*,int ,scalar_t__,int ) ;
 int dev_err (int ,char*) ;
 int dma_alloc_coherent (int ,int ,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sst_dsp_dma_copyfrom (struct sst_dsp*,int ,scalar_t__,int ) ;
 int sst_dsp_dma_get_channel (struct sst_dsp*,int ) ;
 int sst_dsp_dma_put_channel (struct sst_dsp*) ;
 int sst_memcpy32 (int ,scalar_t__,int ) ;

int sst_module_runtime_save(struct sst_module_runtime *runtime,
 struct sst_module_runtime_context *context)
{
 struct sst_dsp *dsp = runtime->dsp;
 struct sst_module *module = runtime->module;
 int ret = 0;

 dev_dbg(dsp->dev, "saving runtime %d memory at 0x%x size 0x%x\n",
  runtime->id, runtime->persistent_offset,
  module->persistent_size);

 context->buffer = dma_alloc_coherent(dsp->dma_dev,
  module->persistent_size,
  &context->dma_buffer, GFP_DMA | GFP_KERNEL);
 if (!context->buffer) {
  dev_err(dsp->dev, "error: DMA context alloc failed\n");
  return -ENOMEM;
 }

 mutex_lock(&dsp->mutex);

 if (dsp->fw_use_dma) {

  ret = sst_dsp_dma_get_channel(dsp, 0);
  if (ret < 0)
   goto err;

  ret = sst_dsp_dma_copyfrom(dsp, context->dma_buffer,
   dsp->addr.lpe_base + runtime->persistent_offset,
   module->persistent_size);
  sst_dsp_dma_put_channel(dsp);
  if (ret < 0) {
   dev_err(dsp->dev, "error: context copy failed\n");
   goto err;
  }
 } else
  sst_memcpy32(context->buffer, dsp->addr.lpe +
   runtime->persistent_offset,
   module->persistent_size);

err:
 mutex_unlock(&dsp->mutex);
 return ret;
}
