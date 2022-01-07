
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int mutex; int dev; } ;
struct sst_block_allocator {int type; int offset; int size; } ;
struct list_head {int dummy; } ;


 int block_alloc (struct sst_dsp*,struct sst_block_allocator*,struct list_head*) ;
 int block_list_prepare (struct sst_dsp*,struct list_head*) ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int sst_alloc_blocks(struct sst_dsp *dsp, struct sst_block_allocator *ba,
 struct list_head *block_list)
{
 int ret;

 dev_dbg(dsp->dev, "block request 0x%x bytes at offset 0x%x type %d\n",
  ba->size, ba->offset, ba->type);

 mutex_lock(&dsp->mutex);

 ret = block_alloc(dsp, ba, block_list);
 if (ret < 0) {
  dev_err(dsp->dev, "error: can't alloc blocks %d\n", ret);
  goto out;
 }


 ret = block_list_prepare(dsp, block_list);
 if (ret < 0)
  dev_err(dsp->dev, "error: prepare failed\n");

out:
 mutex_unlock(&dsp->mutex);
 return ret;
}
