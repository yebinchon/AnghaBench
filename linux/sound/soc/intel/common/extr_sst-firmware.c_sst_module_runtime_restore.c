
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_module_runtime_context {int * buffer; int dma_buffer; } ;
struct sst_module_runtime {scalar_t__ persistent_offset; int id; struct sst_module* module; struct sst_dsp* dsp; } ;
struct sst_module {int persistent_size; } ;
struct TYPE_2__ {scalar_t__ lpe; scalar_t__ lpe_base; } ;
struct sst_dsp {int mutex; int dma_dev; TYPE_1__ addr; int dev; scalar_t__ fw_use_dma; } ;


 int dev_dbg (int ,char*,int ,scalar_t__,int ) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int dma_free_coherent (int ,int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sst_dsp_dma_copyto (struct sst_dsp*,scalar_t__,int ,int ) ;
 int sst_dsp_dma_get_channel (struct sst_dsp*,int ) ;
 int sst_dsp_dma_put_channel (struct sst_dsp*) ;
 int sst_memcpy32 (scalar_t__,int *,int ) ;

int sst_module_runtime_restore(struct sst_module_runtime *runtime,
 struct sst_module_runtime_context *context)
{
 struct sst_dsp *dsp = runtime->dsp;
 struct sst_module *module = runtime->module;
 int ret = 0;

 dev_dbg(dsp->dev, "restoring runtime %d memory at 0x%x size 0x%x\n",
  runtime->id, runtime->persistent_offset,
  module->persistent_size);

 mutex_lock(&dsp->mutex);

 if (!context->buffer) {
  dev_info(dsp->dev, "no context buffer need to restore!\n");
  goto err;
 }

 if (dsp->fw_use_dma) {

  ret = sst_dsp_dma_get_channel(dsp, 0);
  if (ret < 0)
   goto err;

  ret = sst_dsp_dma_copyto(dsp,
   dsp->addr.lpe_base + runtime->persistent_offset,
   context->dma_buffer, module->persistent_size);
  sst_dsp_dma_put_channel(dsp);
  if (ret < 0) {
   dev_err(dsp->dev, "error: module copy failed\n");
   goto err;
  }
 } else
  sst_memcpy32(dsp->addr.lpe + runtime->persistent_offset,
   context->buffer, module->persistent_size);

 dma_free_coherent(dsp->dma_dev, module->persistent_size,
    context->buffer, context->dma_buffer);
 context->buffer = ((void*)0);

err:
 mutex_unlock(&dsp->mutex);
 return ret;
}
