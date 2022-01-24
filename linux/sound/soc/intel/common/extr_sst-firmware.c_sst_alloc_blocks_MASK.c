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
struct sst_dsp {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct sst_block_allocator {int /*<<< orphan*/  type; int /*<<< orphan*/  offset; int /*<<< orphan*/  size; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sst_dsp*,struct sst_block_allocator*,struct list_head*) ; 
 int FUNC1 (struct sst_dsp*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct sst_dsp *dsp, struct sst_block_allocator *ba,
	struct list_head *block_list)
{
	int ret;

	FUNC2(dsp->dev, "block request 0x%x bytes at offset 0x%x type %d\n",
		ba->size, ba->offset, ba->type);

	FUNC4(&dsp->mutex);

	ret = FUNC0(dsp, ba, block_list);
	if (ret < 0) {
		FUNC3(dsp->dev, "error: can't alloc blocks %d\n", ret);
		goto out;
	}

	/* prepare DSP blocks for module usage */
	ret = FUNC1(dsp, block_list);
	if (ret < 0)
		FUNC3(dsp->dev, "error: prepare failed\n");

out:
	FUNC5(&dsp->mutex);
	return ret;
}