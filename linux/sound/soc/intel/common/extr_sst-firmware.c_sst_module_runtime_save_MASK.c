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
struct sst_module_runtime_context {int /*<<< orphan*/  buffer; int /*<<< orphan*/  dma_buffer; } ;
struct sst_module_runtime {scalar_t__ persistent_offset; int /*<<< orphan*/  id; struct sst_module* module; struct sst_dsp* dsp; } ;
struct sst_module {int /*<<< orphan*/  persistent_size; } ;
struct TYPE_2__ {scalar_t__ lpe; scalar_t__ lpe_base; } ;
struct sst_dsp {int /*<<< orphan*/  mutex; TYPE_1__ addr; int /*<<< orphan*/  dev; scalar_t__ fw_use_dma; int /*<<< orphan*/  dma_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sst_dsp*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC9(struct sst_module_runtime *runtime,
	struct sst_module_runtime_context *context)
{
	struct sst_dsp *dsp = runtime->dsp;
	struct sst_module *module = runtime->module;
	int ret = 0;

	FUNC0(dsp->dev, "saving runtime %d memory at 0x%x size 0x%x\n",
		runtime->id, runtime->persistent_offset,
		module->persistent_size);

	context->buffer = FUNC2(dsp->dma_dev,
		module->persistent_size,
		&context->dma_buffer, GFP_DMA | GFP_KERNEL);
	if (!context->buffer) {
		FUNC1(dsp->dev, "error: DMA context alloc failed\n");
		return -ENOMEM;
	}

	FUNC3(&dsp->mutex);

	if (dsp->fw_use_dma) {

		ret = FUNC6(dsp, 0);
		if (ret < 0)
			goto err;

		ret = FUNC5(dsp, context->dma_buffer,
			dsp->addr.lpe_base + runtime->persistent_offset,
			module->persistent_size);
		FUNC7(dsp);
		if (ret < 0) {
			FUNC1(dsp->dev, "error: context copy failed\n");
			goto err;
		}
	} else
		FUNC8(context->buffer, dsp->addr.lpe +
			runtime->persistent_offset,
			module->persistent_size);

err:
	FUNC4(&dsp->mutex);
	return ret;
}