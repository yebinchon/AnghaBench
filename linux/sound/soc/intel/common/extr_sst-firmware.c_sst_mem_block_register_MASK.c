#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* u32 ;
struct sst_mem_block {int type; int /*<<< orphan*/  list; struct sst_block_ops const* ops; void* private; struct sst_dsp* dsp; void* index; void* size; void* offset; } ;
struct sst_dsp {int /*<<< orphan*/  mutex; int /*<<< orphan*/  free_block_list; } ;
struct sst_block_ops {int dummy; } ;
typedef  enum sst_mem_type { ____Placeholder_sst_mem_type } sst_mem_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sst_mem_block* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct sst_mem_block *FUNC4(struct sst_dsp *dsp, u32 offset,
	u32 size, enum sst_mem_type type, const struct sst_block_ops *ops,
	u32 index, void *private)
{
	struct sst_mem_block *block;

	block = FUNC0(sizeof(*block), GFP_KERNEL);
	if (block == NULL)
		return NULL;

	block->offset = offset;
	block->size = size;
	block->index = index;
	block->type = type;
	block->dsp = dsp;
	block->private = private;
	block->ops = ops;

	FUNC2(&dsp->mutex);
	FUNC1(&block->list, &dsp->free_block_list);
	FUNC3(&dsp->mutex);

	return block;
}