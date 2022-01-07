
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_module_runtime {int persistent_offset; int block_list; struct sst_module* module; struct sst_dsp* dsp; } ;
struct sst_module {scalar_t__ persistent_size; int block_list; } ;
struct sst_dsp {int mutex; int dev; } ;
struct sst_block_allocator {scalar_t__ size; int offset; int type; } ;
typedef int ba ;


 int ENOMEM ;
 int SST_MEM_DRAM ;
 int block_alloc (struct sst_dsp*,struct sst_block_allocator*,int *) ;
 int block_alloc_fixed (struct sst_dsp*,struct sst_block_allocator*,int *) ;
 int block_list_prepare (struct sst_dsp*,int *) ;
 int block_list_remove (struct sst_dsp*,int *) ;
 int dev_dbg (int ,char*,scalar_t__,int ,...) ;
 int dev_err (int ,char*,...) ;
 int memset (struct sst_block_allocator*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int sst_module_runtime_alloc_blocks(struct sst_module_runtime *runtime,
 int offset)
{
 struct sst_dsp *dsp = runtime->dsp;
 struct sst_module *module = runtime->module;
 struct sst_block_allocator ba;
 int ret;

 if (module->persistent_size == 0)
  return 0;

 memset(&ba, 0, sizeof(ba));
 ba.size = module->persistent_size;
 ba.type = SST_MEM_DRAM;

 mutex_lock(&dsp->mutex);


 if (offset != 0) {

  ba.offset = offset;

  dev_dbg(dsp->dev, "persistent fixed block request 0x%x bytes type %d offset 0x%x\n",
   ba.size, ba.type, ba.offset);


  ret = block_alloc_fixed(dsp, &ba, &runtime->block_list);

 } else {
  dev_dbg(dsp->dev, "persistent block request 0x%x bytes type %d\n",
   ba.size, ba.type);


  ret = block_alloc(dsp, &ba, &runtime->block_list);
 }
 if (ret < 0) {
  dev_err(dsp->dev,
  "error: no free blocks for runtime module size 0x%x\n",
   module->persistent_size);
  mutex_unlock(&dsp->mutex);
  return -ENOMEM;
 }
 runtime->persistent_offset = ba.offset;


 ret = block_list_prepare(dsp, &runtime->block_list);
 if (ret < 0) {
  dev_err(dsp->dev, "error: runtime block prepare failed\n");
  goto err;
 }

 mutex_unlock(&dsp->mutex);
 return ret;

err:
 block_list_remove(dsp, &module->block_list);
 mutex_unlock(&dsp->mutex);
 return ret;
}
