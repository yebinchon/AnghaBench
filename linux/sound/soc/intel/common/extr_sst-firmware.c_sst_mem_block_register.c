
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct sst_mem_block {int type; int list; struct sst_block_ops const* ops; void* private; struct sst_dsp* dsp; void* index; void* size; void* offset; } ;
struct sst_dsp {int mutex; int free_block_list; } ;
struct sst_block_ops {int dummy; } ;
typedef enum sst_mem_type { ____Placeholder_sst_mem_type } sst_mem_type ;


 int GFP_KERNEL ;
 struct sst_mem_block* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct sst_mem_block *sst_mem_block_register(struct sst_dsp *dsp, u32 offset,
 u32 size, enum sst_mem_type type, const struct sst_block_ops *ops,
 u32 index, void *private)
{
 struct sst_mem_block *block;

 block = kzalloc(sizeof(*block), GFP_KERNEL);
 if (block == ((void*)0))
  return ((void*)0);

 block->offset = offset;
 block->size = size;
 block->index = index;
 block->type = type;
 block->dsp = dsp;
 block->private = private;
 block->ops = ops;

 mutex_lock(&dsp->mutex);
 list_add(&block->list, &dsp->free_block_list);
 mutex_unlock(&dsp->mutex);

 return block;
}
