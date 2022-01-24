#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int (* load_library ) (struct sst_dsp*,int /*<<< orphan*/ ,int) ;} ;
struct sst_dsp {int /*<<< orphan*/  dev; TYPE_1__ fw_ops; struct skl_dev* thread_context; } ;
struct skl_ipc_dxstate_info {unsigned int core_mask; unsigned int dx_mask; } ;
struct TYPE_4__ {int /*<<< orphan*/ * state; } ;
struct skl_dev {int lib_count; TYPE_2__ cores; int /*<<< orphan*/  ipc; int /*<<< orphan*/  lib_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  SKL_BASE_FW_MODULE_ID ; 
 unsigned int SKL_DSP_CORE0_ID ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  SKL_DSP_RUNNING ; 
 int /*<<< orphan*/  SKL_INSTANCE_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sst_dsp*,unsigned int) ; 
 int FUNC3 (struct sst_dsp*,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skl_ipc_dxstate_info*) ; 
 int FUNC5 (struct sst_dsp*) ; 
 int FUNC6 (struct sst_dsp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct sst_dsp *ctx, unsigned int core_id)
{
	int ret;
	struct skl_ipc_dxstate_info dx;
	struct skl_dev *skl = ctx->thread_context;
	unsigned int core_mask = FUNC0(core_id);

	/* If core0 is being turned on, we need to load the FW */
	if (core_id == SKL_DSP_CORE0_ID) {
		ret = FUNC5(ctx);
		if (ret < 0) {
			FUNC1(ctx->dev, "unable to load firmware\n");
			return ret;
		}

		/* load libs as they are also lost on D3 */
		if (skl->lib_count > 1) {
			ret = ctx->fw_ops.load_library(ctx, skl->lib_info,
							skl->lib_count);
			if (ret < 0) {
				FUNC1(ctx->dev, "reload libs failed: %d\n",
						ret);
				return ret;
			}

		}
	}

	/*
	 * If any core other than core 0 is being moved to D0, enable the
	 * core and send the set dx IPC for the core.
	 */
	if (core_id != SKL_DSP_CORE0_ID) {
		ret = FUNC3(ctx, core_mask);
		if (ret < 0)
			return ret;

		dx.core_mask = core_mask;
		dx.dx_mask = core_mask;

		ret = FUNC4(&skl->ipc, SKL_INSTANCE_ID,
					SKL_BASE_FW_MODULE_ID, &dx);
		if (ret < 0) {
			FUNC1(ctx->dev, "Failed to set dsp to D0:core id= %d\n",
					core_id);
			FUNC2(ctx, core_mask);
		}
	}

	skl->cores.state[core_id] = SKL_DSP_RUNNING;

	return 0;
}