#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stream_info {scalar_t__ status; scalar_t__ resume_status; int /*<<< orphan*/  prev; int /*<<< orphan*/  resume_prev; } ;
struct sst_fw_save {void* iram; void* dram; void* sram; void* ddr; } ;
struct TYPE_4__ {int max_streams; } ;
struct intel_sst_drv {scalar_t__ sst_state; TYPE_3__* ops; struct sst_fw_save* fw_save; scalar_t__ ddr_base; scalar_t__ ddr_end; int /*<<< orphan*/  ddr; int /*<<< orphan*/  mailbox; scalar_t__ dram_base; scalar_t__ dram_end; int /*<<< orphan*/  dram; scalar_t__ iram_base; scalar_t__ iram_end; int /*<<< orphan*/  iram; int /*<<< orphan*/  post_msg_wq; int /*<<< orphan*/  irq_num; TYPE_2__* pdata; struct stream_info* streams; TYPE_1__ info; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* reset ) (struct intel_sst_drv*) ;scalar_t__ (* save_dsp_context ) (struct intel_sst_drv*) ;} ;
struct TYPE_5__ {scalar_t__ streams_lost_on_suspend; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SST_MAILBOX_SIZE ; 
 scalar_t__ SST_RESET ; 
 scalar_t__ STREAM_RUNNING ; 
 scalar_t__ STREAM_UN_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct intel_sst_drv* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_fw_save*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct sst_fw_save* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_sst_drv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_sst_drv*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct intel_sst_drv*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_sst_drv*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct intel_sst_drv *ctx = FUNC1(dev);
	struct sst_fw_save *fw_save;
	int i, ret = 0;

	/* check first if we are already in SW reset */
	if (ctx->sst_state == SST_RESET)
		return 0;

	/*
	 * check if any stream is active and running
	 * they should already by suspend by soc_suspend
	 */
	for (i = 1; i <= ctx->info.max_streams; i++) {
		struct stream_info *stream = &ctx->streams[i];

		if (stream->status == STREAM_RUNNING) {
			FUNC0(dev, "stream %d is running, can't suspend, abort\n", i);
			return -EBUSY;
		}

		if (ctx->pdata->streams_lost_on_suspend) {
			stream->resume_status = stream->status;
			stream->resume_prev = stream->prev;
			if (stream->status != STREAM_UN_INIT)
				FUNC8(ctx, i);
		}
	}
	FUNC12(ctx->irq_num);
	FUNC2(ctx->post_msg_wq);

	/* Move the SST state to Reset */
	FUNC9(ctx, SST_RESET);

	/* tell DSP we are suspending */
	if (ctx->ops->save_dsp_context(ctx))
		return -EBUSY;

	/* save the memories */
	fw_save = FUNC6(sizeof(*fw_save), GFP_KERNEL);
	if (!fw_save)
		return -ENOMEM;
	fw_save->iram = FUNC5(ctx->iram_end - ctx->iram_base, GFP_KERNEL);
	if (!fw_save->iram) {
		ret = -ENOMEM;
		goto iram;
	}
	fw_save->dram = FUNC5(ctx->dram_end - ctx->dram_base, GFP_KERNEL);
	if (!fw_save->dram) {
		ret = -ENOMEM;
		goto dram;
	}
	fw_save->sram = FUNC5(SST_MAILBOX_SIZE, GFP_KERNEL);
	if (!fw_save->sram) {
		ret = -ENOMEM;
		goto sram;
	}

	fw_save->ddr = FUNC5(ctx->ddr_end - ctx->ddr_base, GFP_KERNEL);
	if (!fw_save->ddr) {
		ret = -ENOMEM;
		goto ddr;
	}

	FUNC7(fw_save->iram, ctx->iram, ctx->iram_end - ctx->iram_base);
	FUNC7(fw_save->dram, ctx->dram, ctx->dram_end - ctx->dram_base);
	FUNC7(fw_save->sram, ctx->mailbox, SST_MAILBOX_SIZE);
	FUNC7(fw_save->ddr, ctx->ddr, ctx->ddr_end - ctx->ddr_base);

	ctx->fw_save = fw_save;
	ctx->ops->reset(ctx);
	return 0;
ddr:
	FUNC4(fw_save->sram);
sram:
	FUNC4(fw_save->dram);
dram:
	FUNC4(fw_save->iram);
iram:
	FUNC3(fw_save);
	return ret;
}