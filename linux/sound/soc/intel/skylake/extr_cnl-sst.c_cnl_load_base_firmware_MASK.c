#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sst_dsp {TYPE_1__* fw; int /*<<< orphan*/  dev; int /*<<< orphan*/  fw_name; struct skl_dev* thread_context; } ;
struct skl_dev {int fw_loaded; int /*<<< orphan*/  boot_complete; int /*<<< orphan*/  boot_wait; scalar_t__ is_first_boot; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNL_ADSP_FW_HDR_OFFSET ; 
 int EIO ; 
 int /*<<< orphan*/  SKL_DSP_CORE0_MASK ; 
 int /*<<< orphan*/  SKL_IPC_BOOT_MSECS ; 
 int /*<<< orphan*/  FUNC0 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware*) ; 
 int FUNC7 (struct sst_dsp*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sst_dsp*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sst_dsp *ctx)
{
	struct firmware stripped_fw;
	struct skl_dev *cnl = ctx->thread_context;
	int ret;

	if (!ctx->fw) {
		ret = FUNC5(&ctx->fw, ctx->fw_name, ctx->dev);
		if (ret < 0) {
			FUNC2(ctx->dev, "request firmware failed: %d\n", ret);
			goto cnl_load_base_firmware_failed;
		}
	}

	/* parse uuids if first boot */
	if (cnl->is_first_boot) {
		ret = FUNC7(ctx, ctx->fw,
					  CNL_ADSP_FW_HDR_OFFSET, 0);
		if (ret < 0)
			goto cnl_load_base_firmware_failed;
	}

	stripped_fw.data = ctx->fw->data;
	stripped_fw.size = ctx->fw->size;
	FUNC6(&stripped_fw);

	ret = FUNC1(ctx, stripped_fw.data, stripped_fw.size);
	if (ret < 0) {
		FUNC2(ctx->dev, "prepare firmware failed: %d\n", ret);
		goto cnl_load_base_firmware_failed;
	}

	ret = FUNC8(ctx);
	if (ret < 0) {
		FUNC2(ctx->dev, "transfer firmware failed: %d\n", ret);
		FUNC0(ctx, SKL_DSP_CORE0_MASK);
		goto cnl_load_base_firmware_failed;
	}

	ret = FUNC9(cnl->boot_wait, cnl->boot_complete,
				 FUNC3(SKL_IPC_BOOT_MSECS));
	if (ret == 0) {
		FUNC2(ctx->dev, "FW ready timed-out\n");
		FUNC0(ctx, SKL_DSP_CORE0_MASK);
		ret = -EIO;
		goto cnl_load_base_firmware_failed;
	}

	cnl->fw_loaded = true;

	return 0;

cnl_load_base_firmware_failed:
	FUNC4(ctx->fw);
	ctx->fw = NULL;

	return ret;
}