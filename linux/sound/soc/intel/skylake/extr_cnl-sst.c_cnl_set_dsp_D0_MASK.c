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
struct skl_ipc_dxstate_info {unsigned int core_mask; unsigned int dx_mask; } ;
struct TYPE_2__ {void** state; } ;
struct skl_dev {int boot_complete; TYPE_1__ cores; int /*<<< orphan*/  ipc; int /*<<< orphan*/  boot_wait; int /*<<< orphan*/  fw_loaded; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNL_ADSP_ERROR_CODE ; 
 int /*<<< orphan*/  CNL_ADSP_FW_STATUS ; 
 int /*<<< orphan*/  CNL_BASE_FW_MODULE_ID ; 
 int /*<<< orphan*/  CNL_INSTANCE_ID ; 
 unsigned int SKL_DSP_CORE0_ID ; 
 unsigned int FUNC0 (unsigned int) ; 
 void* SKL_DSP_RUNNING ; 
 int /*<<< orphan*/  SKL_IPC_BOOT_MSECS ; 
 int /*<<< orphan*/  FUNC1 (struct sst_dsp*,unsigned int) ; 
 int FUNC2 (struct sst_dsp*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_dsp*) ; 
 int FUNC5 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct skl_ipc_dxstate_info*) ; 
 int FUNC9 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct sst_dsp *ctx, unsigned int core_id)
{
	struct skl_dev *cnl = ctx->thread_context;
	unsigned int core_mask = FUNC0(core_id);
	struct skl_ipc_dxstate_info dx;
	int ret;

	if (!cnl->fw_loaded) {
		cnl->boot_complete = false;
		ret = FUNC5(ctx);
		if (ret < 0) {
			FUNC6(ctx->dev, "fw reload failed: %d\n", ret);
			return ret;
		}

		cnl->cores.state[core_id] = SKL_DSP_RUNNING;
		return ret;
	}

	ret = FUNC2(ctx, core_mask);
	if (ret < 0) {
		FUNC6(ctx->dev, "enable dsp core %d failed: %d\n",
			core_id, ret);
		goto err;
	}

	if (core_id == SKL_DSP_CORE0_ID) {
		/* enable interrupt */
		FUNC3(ctx);
		FUNC4(ctx);
		cnl->boot_complete = false;

		ret = FUNC10(cnl->boot_wait, cnl->boot_complete,
					 FUNC7(SKL_IPC_BOOT_MSECS));
		if (ret == 0) {
			FUNC6(ctx->dev,
				"dsp boot timeout, status=%#x error=%#x\n",
				FUNC9(ctx, CNL_ADSP_FW_STATUS),
				FUNC9(ctx, CNL_ADSP_ERROR_CODE));
			goto err;
		}
	} else {
		dx.core_mask = core_mask;
		dx.dx_mask = core_mask;

		ret = FUNC8(&cnl->ipc, CNL_INSTANCE_ID,
				     CNL_BASE_FW_MODULE_ID, &dx);
		if (ret < 0) {
			FUNC6(ctx->dev, "set_dx failed, core: %d ret: %d\n",
				core_id, ret);
			goto err;
		}
	}
	cnl->cores.state[core_id] = SKL_DSP_RUNNING;

	return 0;
err:
	FUNC1(ctx, core_mask);

	return ret;
}