
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_module {int block_list; int size; int data; scalar_t__ offset; scalar_t__ data_offset; int type; struct sst_fw* sst_fw; struct sst_dsp* dsp; } ;
struct sst_fw {scalar_t__ dmable_fw_paddr; } ;
struct TYPE_2__ {scalar_t__ lpe; scalar_t__ lpe_base; } ;
struct sst_dsp {int mutex; TYPE_1__ addr; int dev; scalar_t__ fw_use_dma; } ;
struct sst_block_allocator {int type; scalar_t__ offset; int size; } ;
typedef int ba ;


 int ENOMEM ;
 int block_alloc_fixed (struct sst_dsp*,struct sst_block_allocator*,int *) ;
 int block_list_prepare (struct sst_dsp*,int *) ;
 int block_list_remove (struct sst_dsp*,int *) ;
 int dev_dbg (int ,char*,int ,scalar_t__,int ) ;
 int dev_err (int ,char*,...) ;
 int memset (struct sst_block_allocator*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sst_dsp_dma_copyto (struct sst_dsp*,scalar_t__,scalar_t__,int ) ;
 int sst_memcpy32 (scalar_t__,int ,int ) ;

int sst_module_alloc_blocks(struct sst_module *module)
{
 struct sst_dsp *dsp = module->dsp;
 struct sst_fw *sst_fw = module->sst_fw;
 struct sst_block_allocator ba;
 int ret;

 memset(&ba, 0, sizeof(ba));
 ba.size = module->size;
 ba.type = module->type;
 ba.offset = module->offset;

 dev_dbg(dsp->dev, "block request 0x%x bytes at offset 0x%x type %d\n",
  ba.size, ba.offset, ba.type);

 mutex_lock(&dsp->mutex);


 ret = block_alloc_fixed(dsp, &ba, &module->block_list);
 if (ret < 0) {
  dev_err(dsp->dev,
   "error: no free blocks for section at offset 0x%x size 0x%x\n",
   module->offset, module->size);
  mutex_unlock(&dsp->mutex);
  return -ENOMEM;
 }


 ret = block_list_prepare(dsp, &module->block_list);
 if (ret < 0) {
  dev_err(dsp->dev, "error: fw module prepare failed\n");
  goto err;
 }


 if (dsp->fw_use_dma) {
  ret = sst_dsp_dma_copyto(dsp,
   dsp->addr.lpe_base + module->offset,
   sst_fw->dmable_fw_paddr + module->data_offset,
   module->size);
  if (ret < 0) {
   dev_err(dsp->dev, "error: module copy failed\n");
   goto err;
  }
 } else
  sst_memcpy32(dsp->addr.lpe + module->offset, module->data,
   module->size);

 mutex_unlock(&dsp->mutex);
 return ret;

err:
 block_list_remove(dsp, &module->block_list);
 mutex_unlock(&dsp->mutex);
 return ret;
}
