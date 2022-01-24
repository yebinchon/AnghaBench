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
struct stream_info {scalar_t__ resume_status; scalar_t__ status; int /*<<< orphan*/  resume_prev; int /*<<< orphan*/  prev; } ;
struct sst_fw_save {int /*<<< orphan*/  ddr; int /*<<< orphan*/  iram; int /*<<< orphan*/  dram; int /*<<< orphan*/  sram; } ;
struct sst_block {int dummy; } ;
struct TYPE_6__ {int max_streams; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; struct stream_info* streams; TYPE_3__ info; TYPE_2__* pdata; TYPE_1__* ops; scalar_t__ ddr_base; scalar_t__ ddr_end; int /*<<< orphan*/  ddr; int /*<<< orphan*/  mailbox; scalar_t__ dram_base; scalar_t__ dram_end; int /*<<< orphan*/  dram; scalar_t__ iram_base; scalar_t__ iram_end; int /*<<< orphan*/  iram; struct sst_fw_save* fw_save; } ;
struct device {int dummy; } ;
struct TYPE_5__ {scalar_t__ streams_lost_on_suspend; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* start ) (struct intel_sst_drv*) ;int /*<<< orphan*/  (* reset ) (struct intel_sst_drv*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_DWNL_ID ; 
 int /*<<< orphan*/  SST_FW_LOADING ; 
 int /*<<< orphan*/  SST_FW_RUNNING ; 
 scalar_t__ SST_MAILBOX_SIZE ; 
 scalar_t__ STREAM_UN_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct intel_sst_drv* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sst_fw_save*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sst_block* FUNC6 (struct intel_sst_drv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_sst_drv*,struct sst_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_sst_drv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_sst_drv*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct intel_sst_drv*,struct sst_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_sst_drv*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_sst_drv*) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct intel_sst_drv *ctx = FUNC2(dev);
	struct sst_fw_save *fw_save = ctx->fw_save;
	struct sst_block *block;
	int i, ret = 0;

	if (!fw_save)
		return 0;

	FUNC9(ctx, SST_FW_LOADING);

	/* we have to restore the memory saved */
	ctx->ops->reset(ctx);

	ctx->fw_save = NULL;

	FUNC5(ctx->iram, fw_save->iram, ctx->iram_end - ctx->iram_base);
	FUNC5(ctx->dram, fw_save->dram, ctx->dram_end - ctx->dram_base);
	FUNC5(ctx->mailbox, fw_save->sram, SST_MAILBOX_SIZE);
	FUNC5(ctx->ddr, fw_save->ddr, ctx->ddr_end - ctx->ddr_base);

	FUNC4(fw_save->sram);
	FUNC4(fw_save->dram);
	FUNC4(fw_save->iram);
	FUNC4(fw_save->ddr);
	FUNC3(fw_save);

	block = FUNC6(ctx, 0, FW_DWNL_ID);
	if (block == NULL)
		return -ENOMEM;


	/* start and wait for ack */
	ctx->ops->start(ctx);
	ret = FUNC10(ctx, block);
	if (ret) {
		FUNC1(ctx->dev, "fw download failed %d\n", ret);
		/* FW download failed due to timeout */
		ret = -EBUSY;

	} else {
		FUNC9(ctx, SST_FW_RUNNING);
	}

	if (ctx->pdata->streams_lost_on_suspend) {
		for (i = 1; i <= ctx->info.max_streams; i++) {
			struct stream_info *stream = &ctx->streams[i];

			if (stream->resume_status != STREAM_UN_INIT) {
				FUNC0(ctx->dev, "Re-allocing stream %d status %d prev %d\n",
					i, stream->resume_status,
					stream->resume_prev);
				FUNC8(ctx, i);
				stream->status = stream->resume_status;
				stream->prev = stream->resume_prev;
			}
		}
	}

	FUNC7(ctx, block);
	return ret;
}