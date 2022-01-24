#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  (* cl_cleanup_controller ) (struct sst_dsp*) ;} ;
struct TYPE_7__ {TYPE_1__ ops; } ;
struct sst_dsp {TYPE_3__* fw; TYPE_2__ cl_dev; int /*<<< orphan*/  dev; int /*<<< orphan*/  fw_name; struct skl_dev* thread_context; } ;
struct skl_dev {int boot_complete; int fw_loaded; int /*<<< orphan*/  boot_wait; scalar_t__ is_first_boot; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SKL_ADSP_FW_BIN_HDR_OFFSET ; 
 int /*<<< orphan*/  SKL_ADSP_FW_STATUS ; 
 int /*<<< orphan*/  SKL_DSP_CORE0_MASK ; 
 int /*<<< orphan*/  SKL_FW_INIT ; 
 int SKL_INIT_TIMEOUT ; 
 int /*<<< orphan*/  SKL_IPC_BOOT_MSECS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sst_dsp*) ; 
 int FUNC9 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC10 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct firmware*) ; 
 int /*<<< orphan*/  FUNC12 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC13 (struct sst_dsp*) ; 
 int FUNC14 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct sst_dsp*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sst_dsp*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct sst_dsp *ctx)
{
	int ret = 0, i;
	struct skl_dev *skl = ctx->thread_context;
	struct firmware stripped_fw;
	u32 reg;

	skl->boot_complete = false;
	FUNC2(&skl->boot_wait);

	if (ctx->fw == NULL) {
		ret = FUNC6(&ctx->fw, ctx->fw_name, ctx->dev);
		if (ret < 0) {
			FUNC1(ctx->dev, "Request firmware failed %d\n", ret);
			return -EIO;
		}
	}

	/* prase uuids on first boot */
	if (skl->is_first_boot) {
		ret = FUNC15(ctx, ctx->fw, SKL_ADSP_FW_BIN_HDR_OFFSET, 0);
		if (ret < 0) {
			FUNC1(ctx->dev, "UUID parsing err: %d\n", ret);
			FUNC5(ctx->fw);
			FUNC10(ctx, SKL_DSP_CORE0_MASK);
			return ret;
		}
	}

	/* check for extended manifest */
	stripped_fw.data = ctx->fw->data;
	stripped_fw.size = ctx->fw->size;

	FUNC11(&stripped_fw);

	ret = FUNC9(ctx);
	if (ret < 0) {
		FUNC1(ctx->dev, "Boot dsp core failed ret: %d\n", ret);
		goto skl_load_base_firmware_failed;
	}

	ret = FUNC8(ctx);
	if (ret < 0) {
		FUNC1(ctx->dev, "CL dma prepare failed : %d\n", ret);
		goto skl_load_base_firmware_failed;
	}

	/* enable Interrupt */
	FUNC12(ctx);
	FUNC13(ctx);

	/* check ROM Status */
	for (i = SKL_INIT_TIMEOUT; i > 0; --i) {
		if (FUNC7(ctx, SKL_FW_INIT)) {
			FUNC0(ctx->dev,
				"ROM loaded, we can continue with FW loading\n");
			break;
		}
		FUNC3(1);
	}
	if (!i) {
		reg = FUNC16(ctx, SKL_ADSP_FW_STATUS);
		FUNC1(ctx->dev,
			"Timeout waiting for ROM init done, reg:0x%x\n", reg);
		ret = -EIO;
		goto transfer_firmware_failed;
	}

	ret = FUNC14(ctx, stripped_fw.data, stripped_fw.size);
	if (ret < 0) {
		FUNC1(ctx->dev, "Transfer firmware failed%d\n", ret);
		goto transfer_firmware_failed;
	} else {
		ret = FUNC18(skl->boot_wait, skl->boot_complete,
					FUNC4(SKL_IPC_BOOT_MSECS));
		if (ret == 0) {
			FUNC1(ctx->dev, "DSP boot failed, FW Ready timed-out\n");
			ret = -EIO;
			goto transfer_firmware_failed;
		}

		FUNC0(ctx->dev, "Download firmware successful%d\n", ret);
		skl->fw_loaded = true;
	}
	return 0;
transfer_firmware_failed:
	ctx->cl_dev.ops.cl_cleanup_controller(ctx);
skl_load_base_firmware_failed:
	FUNC10(ctx, SKL_DSP_CORE0_MASK);
	FUNC5(ctx->fw);
	ctx->fw = NULL;
	return ret;
}