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
struct sst_dsp {int /*<<< orphan*/  dev; struct skl_dev* thread_context; } ;
struct skl_ipc_dxstate_info {unsigned int core_mask; int /*<<< orphan*/  dx_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/ * state; } ;
struct skl_dev {int fw_loaded; TYPE_1__ cores; int /*<<< orphan*/  ipc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXT_BASE_FW_MODULE_ID ; 
 int /*<<< orphan*/  BXT_INSTANCE_ID ; 
 unsigned int SKL_DSP_CORE0_ID ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  SKL_DSP_RESET ; 
 int /*<<< orphan*/  SKL_IPC_D3_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct sst_dsp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_dsp*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skl_ipc_dxstate_info*) ; 

__attribute__((used)) static int FUNC7(struct sst_dsp *ctx, unsigned int core_id)
{
	int ret;
	struct skl_ipc_dxstate_info dx;
	struct skl_dev *skl = ctx->thread_context;
	unsigned int core_mask = FUNC0(core_id);

	dx.core_mask = core_mask;
	dx.dx_mask = SKL_IPC_D3_MASK;

	FUNC1(ctx->dev, "core mask=%x dx_mask=%x\n",
			dx.core_mask, dx.dx_mask);

	ret = FUNC6(&skl->ipc, BXT_INSTANCE_ID,
				BXT_BASE_FW_MODULE_ID, &dx);
	if (ret < 0) {
		FUNC2(ctx->dev,
		"Failed to set DSP to D3:core id = %d;Continue reset\n",
		core_id);
		/*
		 * In case of D3 failure, re-download the firmware, so set
		 * fw_loaded to false.
		 */
		skl->fw_loaded = false;
	}

	if (core_id == SKL_DSP_CORE0_ID) {
		/* disable Interrupt */
		FUNC5(ctx);
		FUNC4(ctx);
	}
	ret = FUNC3(ctx, core_mask);
	if (ret < 0) {
		FUNC2(ctx->dev, "Failed to disable core %d\n", ret);
		return ret;
	}
	skl->cores.state[core_id] = SKL_DSP_RESET;
	return 0;
}