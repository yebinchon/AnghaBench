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
 int /*<<< orphan*/  BXT_ADSP_ERROR_CODE ; 
 int /*<<< orphan*/  BXT_ADSP_FW_BIN_HDR_OFFSET ; 
 int /*<<< orphan*/  BXT_ADSP_FW_STATUS ; 
 int BXT_FW_ROM_INIT_RETRY ; 
 int EIO ; 
 int /*<<< orphan*/  SKL_DSP_CORE0_MASK ; 
 int /*<<< orphan*/  SKL_IPC_BOOT_MSECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware*) ; 
 int FUNC8 (struct sst_dsp*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sst_dsp*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct sst_dsp *ctx)
{
	struct firmware stripped_fw;
	struct skl_dev *skl = ctx->thread_context;
	int ret, i;

	if (ctx->fw == NULL) {
		ret = FUNC5(&ctx->fw, ctx->fw_name, ctx->dev);
		if (ret < 0) {
			FUNC1(ctx->dev, "Request firmware failed %d\n", ret);
			return ret;
		}
	}

	/* prase uuids on first boot */
	if (skl->is_first_boot) {
		ret = FUNC8(ctx, ctx->fw, BXT_ADSP_FW_BIN_HDR_OFFSET, 0);
		if (ret < 0)
			goto sst_load_base_firmware_failed;
	}

	stripped_fw.data = ctx->fw->data;
	stripped_fw.size = ctx->fw->size;
	FUNC7(&stripped_fw);


	for (i = 0; i < BXT_FW_ROM_INIT_RETRY; i++) {
		ret = FUNC9(ctx, stripped_fw.data, stripped_fw.size);
		if (ret == 0)
			break;
	}

	if (ret < 0) {
		FUNC1(ctx->dev, "Error code=0x%x: FW status=0x%x\n",
			FUNC10(ctx, BXT_ADSP_ERROR_CODE),
			FUNC10(ctx, BXT_ADSP_FW_STATUS));

		FUNC1(ctx->dev, "Core En/ROM load fail:%d\n", ret);
		goto sst_load_base_firmware_failed;
	}

	ret = FUNC11(ctx);
	if (ret < 0) {
		FUNC1(ctx->dev, "Transfer firmware failed %d\n", ret);
		FUNC2(ctx->dev, "Error code=0x%x: FW status=0x%x\n",
			FUNC10(ctx, BXT_ADSP_ERROR_CODE),
			FUNC10(ctx, BXT_ADSP_FW_STATUS));

		FUNC6(ctx, SKL_DSP_CORE0_MASK);
	} else {
		FUNC0(ctx->dev, "Firmware download successful\n");
		ret = FUNC12(skl->boot_wait, skl->boot_complete,
					FUNC3(SKL_IPC_BOOT_MSECS));
		if (ret == 0) {
			FUNC1(ctx->dev, "DSP boot fail, FW Ready timeout\n");
			FUNC6(ctx, SKL_DSP_CORE0_MASK);
			ret = -EIO;
		} else {
			ret = 0;
			skl->fw_loaded = true;
		}
	}

	return ret;

sst_load_base_firmware_failed:
	FUNC4(ctx->fw);
	ctx->fw = NULL;
	return ret;
}