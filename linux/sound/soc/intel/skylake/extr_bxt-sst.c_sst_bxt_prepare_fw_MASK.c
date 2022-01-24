#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  area; } ;
struct TYPE_4__ {int (* prepare ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ;int stream_tag; int /*<<< orphan*/  (* cleanup ) (int /*<<< orphan*/ ,TYPE_2__*,int) ;} ;
struct sst_dsp {TYPE_2__ dmab; int /*<<< orphan*/  dev; TYPE_1__ dsp_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXT_ADSP_FW_STATUS ; 
 int /*<<< orphan*/  BXT_INIT_TIMEOUT ; 
 int BXT_IPC_PURGE_FW ; 
 int /*<<< orphan*/  BXT_ROM_INIT_TIMEOUT ; 
 int EIO ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCI ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCIE ; 
 int /*<<< orphan*/  SKL_ADSP_REG_HIPCIE_DONE ; 
 int SKL_ADSP_REG_HIPCI_BUSY ; 
 int SKL_DSP_CORE0_MASK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SKL_FW_INIT ; 
 int /*<<< orphan*/  SKL_FW_STS_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sst_dsp*,int) ; 
 int FUNC4 (struct sst_dsp*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_dsp*,int) ; 
 int FUNC6 (struct sst_dsp*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sst_dsp*) ; 
 int /*<<< orphan*/  FUNC8 (struct sst_dsp*) ; 
 int FUNC9 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct sst_dsp*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC13(struct sst_dsp *ctx,
			const void *fwdata, u32 fwsize)
{
	int stream_tag, ret;

	stream_tag = ctx->dsp_ops.prepare(ctx->dev, 0x40, fwsize, &ctx->dmab);
	if (stream_tag <= 0) {
		FUNC1(ctx->dev, "Failed to prepare DMA FW loading err: %x\n",
				stream_tag);
		return stream_tag;
	}

	ctx->dsp_ops.stream_tag = stream_tag;
	FUNC2(ctx->dmab.area, fwdata, fwsize);

	/* Step 1: Power up core 0 and core1 */
	ret = FUNC4(ctx, SKL_DSP_CORE0_MASK |
				FUNC0(1));
	if (ret < 0) {
		FUNC1(ctx->dev, "dsp core0/1 power up failed\n");
		goto base_fw_load_failed;
	}

	/* Step 2: Purge FW request */
	FUNC10(ctx, SKL_ADSP_REG_HIPCI, SKL_ADSP_REG_HIPCI_BUSY |
				(BXT_IPC_PURGE_FW | ((stream_tag - 1) << 9)));

	/* Step 3: Unset core0 reset state & unstall/run core0 */
	ret = FUNC6(ctx, SKL_DSP_CORE0_MASK);
	if (ret < 0) {
		FUNC1(ctx->dev, "Start dsp core failed ret: %d\n", ret);
		ret = -EIO;
		goto base_fw_load_failed;
	}

	/* Step 4: Wait for DONE Bit */
	ret = FUNC9(ctx, SKL_ADSP_REG_HIPCIE,
					SKL_ADSP_REG_HIPCIE_DONE,
					SKL_ADSP_REG_HIPCIE_DONE,
					BXT_INIT_TIMEOUT, "HIPCIE Done");
	if (ret < 0) {
		FUNC1(ctx->dev, "Timeout for Purge Request%d\n", ret);
		goto base_fw_load_failed;
	}

	/* Step 5: power down core1 */
	ret = FUNC3(ctx, FUNC0(1));
	if (ret < 0) {
		FUNC1(ctx->dev, "dsp core1 power down failed\n");
		goto base_fw_load_failed;
	}

	/* Step 6: Enable Interrupt */
	FUNC7(ctx);
	FUNC8(ctx);

	/* Step 7: Wait for ROM init */
	ret = FUNC9(ctx, BXT_ADSP_FW_STATUS, SKL_FW_STS_MASK,
			SKL_FW_INIT, BXT_ROM_INIT_TIMEOUT, "ROM Load");
	if (ret < 0) {
		FUNC1(ctx->dev, "Timeout for ROM init, ret:%d\n", ret);
		goto base_fw_load_failed;
	}

	return ret;

base_fw_load_failed:
	ctx->dsp_ops.cleanup(ctx->dev, &ctx->dmab, stream_tag);
	FUNC3(ctx, FUNC0(1));
	FUNC5(ctx, SKL_DSP_CORE0_MASK);
	return ret;
}