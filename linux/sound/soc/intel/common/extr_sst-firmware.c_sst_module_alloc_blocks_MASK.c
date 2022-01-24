#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sst_module {int /*<<< orphan*/  block_list; int /*<<< orphan*/  size; int /*<<< orphan*/  data; scalar_t__ offset; scalar_t__ data_offset; int /*<<< orphan*/  type; struct sst_fw* sst_fw; struct sst_dsp* dsp; } ;
struct sst_fw {scalar_t__ dmable_fw_paddr; } ;
struct TYPE_2__ {scalar_t__ lpe; scalar_t__ lpe_base; } ;
struct sst_dsp {int /*<<< orphan*/  mutex; TYPE_1__ addr; int /*<<< orphan*/  dev; scalar_t__ fw_use_dma; } ;
struct sst_block_allocator {int /*<<< orphan*/  type; scalar_t__ offset; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  ba ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct sst_dsp*,struct sst_block_allocator*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sst_dsp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sst_dsp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_block_allocator*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sst_dsp*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct sst_module *module)
{
	struct sst_dsp *dsp = module->dsp;
	struct sst_fw *sst_fw = module->sst_fw;
	struct sst_block_allocator ba;
	int ret;

	FUNC5(&ba, 0, sizeof(ba));
	ba.size = module->size;
	ba.type = module->type;
	ba.offset = module->offset;

	FUNC3(dsp->dev, "block request 0x%x bytes at offset 0x%x type %d\n",
		ba.size, ba.offset, ba.type);

	FUNC6(&dsp->mutex);

	/* alloc blocks that includes this section */
	ret = FUNC0(dsp, &ba, &module->block_list);
	if (ret < 0) {
		FUNC4(dsp->dev,
			"error: no free blocks for section at offset 0x%x size 0x%x\n",
			module->offset, module->size);
		FUNC7(&dsp->mutex);
		return -ENOMEM;
	}

	/* prepare DSP blocks for module copy */
	ret = FUNC1(dsp, &module->block_list);
	if (ret < 0) {
		FUNC4(dsp->dev, "error: fw module prepare failed\n");
		goto err;
	}

	/* copy partial module data to blocks */
	if (dsp->fw_use_dma) {
		ret = FUNC8(dsp,
			dsp->addr.lpe_base + module->offset,
			sst_fw->dmable_fw_paddr + module->data_offset,
			module->size);
		if (ret < 0) {
			FUNC4(dsp->dev, "error: module copy failed\n");
			goto err;
		}
	} else
		FUNC9(dsp->addr.lpe + module->offset, module->data,
			module->size);

	FUNC7(&dsp->mutex);
	return ret;

err:
	FUNC2(dsp, &module->block_list);
	FUNC7(&dsp->mutex);
	return ret;
}