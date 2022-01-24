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
struct sst_module_runtime_context {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  dma_buffer; } ;
struct sst_module_runtime {scalar_t__ persistent_offset; int /*<<< orphan*/  id; struct sst_module* module; struct sst_dsp* dsp; } ;
struct sst_module {int /*<<< orphan*/  persistent_size; } ;
struct TYPE_2__ {scalar_t__ lpe; scalar_t__ lpe_base; } ;
struct sst_dsp {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dma_dev; TYPE_1__ addr; int /*<<< orphan*/  dev; scalar_t__ fw_use_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sst_dsp*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(struct sst_module_runtime *runtime,
	struct sst_module_runtime_context *context)
{
	struct sst_dsp *dsp = runtime->dsp;
	struct sst_module *module = runtime->module;
	int ret = 0;

	FUNC0(dsp->dev, "restoring runtime %d memory at 0x%x size 0x%x\n",
		runtime->id, runtime->persistent_offset,
		module->persistent_size);

	FUNC4(&dsp->mutex);

	if (!context->buffer) {
		FUNC2(dsp->dev, "no context buffer need to restore!\n");
		goto err;
	}

	if (dsp->fw_use_dma) {

		ret = FUNC7(dsp, 0);
		if (ret < 0)
			goto err;

		ret = FUNC6(dsp,
			dsp->addr.lpe_base + runtime->persistent_offset,
			context->dma_buffer, module->persistent_size);
		FUNC8(dsp);
		if (ret < 0) {
			FUNC1(dsp->dev, "error: module copy failed\n");
			goto err;
		}
	} else
		FUNC9(dsp->addr.lpe + runtime->persistent_offset,
			context->buffer, module->persistent_size);

	FUNC3(dsp->dma_dev, module->persistent_size,
				context->buffer, context->dma_buffer);
	context->buffer = NULL;

err:
	FUNC5(&dsp->mutex);
	return ret;
}