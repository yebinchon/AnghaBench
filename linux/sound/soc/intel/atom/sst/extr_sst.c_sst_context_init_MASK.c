#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct stream_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  pipe_id; } ;
struct pm_qos_request {int dummy; } ;
struct TYPE_18__ {int max_streams; } ;
struct TYPE_13__ {scalar_t__ ipcd; scalar_t__ ipcx; } ;
struct intel_sst_drv {int pvt_id; int /*<<< orphan*/  post_msg_wq; TYPE_5__* dev; int /*<<< orphan*/  firmware_name; int /*<<< orphan*/  qos; int /*<<< orphan*/  shim; int /*<<< orphan*/  irq_num; TYPE_4__* ops; struct stream_info* streams; TYPE_7__ info; TYPE_3__* pdata; TYPE_1__ ipc_reg; int /*<<< orphan*/  mailbox_recv_offset; scalar_t__ use_lli; scalar_t__ use_dma; int /*<<< orphan*/ * fw_in_mem; scalar_t__ stream_cnt; } ;
struct TYPE_17__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_16__ {int /*<<< orphan*/  irq_thread; int /*<<< orphan*/  interrupt; } ;
struct TYPE_15__ {TYPE_2__* ipc_info; int /*<<< orphan*/  probe_data; } ;
struct TYPE_14__ {scalar_t__ ipc_offset; int /*<<< orphan*/  mbox_recv_off; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PIPE_RSVD ; 
 int /*<<< orphan*/  PM_QOS_CPU_DMA_LATENCY ; 
 int /*<<< orphan*/  PM_QOS_DEFAULT_VALUE ; 
 int /*<<< orphan*/  SST_DRV_NAME ; 
 int /*<<< orphan*/  SST_IMRX ; 
 scalar_t__ SST_IPCD ; 
 scalar_t__ SST_IPCX ; 
 int /*<<< orphan*/  SST_RESET ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct intel_sst_drv*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct stream_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,struct intel_sst_drv*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct intel_sst_drv*) ; 
 int /*<<< orphan*/  sst_firmware_load_cb ; 
 int /*<<< orphan*/  sst_fw_version_attr_group ; 
 int /*<<< orphan*/  FUNC12 (struct intel_sst_drv*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_sst_drv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (struct intel_sst_drv*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC19(struct intel_sst_drv *ctx)
{
	int ret = 0, i;

	if (!ctx->pdata)
		return -EINVAL;

	if (!ctx->pdata->probe_data)
		return -EINVAL;

	FUNC6(&ctx->info, ctx->pdata->probe_data, sizeof(ctx->info));

	ret = FUNC11(ctx);
	if (ret != 0)
		return -EINVAL;

	FUNC12(ctx);
	FUNC14(ctx, SST_RESET);

	/* pvt_id 0 reserved for async messages */
	ctx->pvt_id = 1;
	ctx->stream_cnt = 0;
	ctx->fw_in_mem = NULL;
	/* we use memcpy, so set to 0 */
	ctx->use_dma = 0;
	ctx->use_lli = 0;

	if (FUNC16(ctx))
		return -EINVAL;

	ctx->mailbox_recv_offset = ctx->pdata->ipc_info->mbox_recv_off;
	ctx->ipc_reg.ipcx = SST_IPCX + ctx->pdata->ipc_info->ipc_offset;
	ctx->ipc_reg.ipcd = SST_IPCD + ctx->pdata->ipc_info->ipc_offset;

	FUNC3(ctx->dev, "Got drv data max stream %d\n",
				ctx->info.max_streams);

	for (i = 1; i <= ctx->info.max_streams; i++) {
		struct stream_info *stream = &ctx->streams[i];

		FUNC7(stream, 0, sizeof(*stream));
		stream->pipe_id = PIPE_RSVD;
		FUNC8(&stream->lock);
	}

	/* Register the ISR */
	ret = FUNC5(ctx->dev, ctx->irq_num, ctx->ops->interrupt,
					ctx->ops->irq_thread, 0, SST_DRV_NAME,
					ctx);
	if (ret)
		goto do_free_mem;

	FUNC1(ctx->dev, "Registered IRQ %#x\n", ctx->irq_num);

	/* default intr are unmasked so set this as masked */
	FUNC15(ctx->shim, SST_IMRX, 0xFFFF0038);

	ctx->qos = FUNC4(ctx->dev,
		sizeof(struct pm_qos_request), GFP_KERNEL);
	if (!ctx->qos) {
		ret = -ENOMEM;
		goto do_free_mem;
	}
	FUNC9(ctx->qos, PM_QOS_CPU_DMA_LATENCY,
				PM_QOS_DEFAULT_VALUE);

	FUNC1(ctx->dev, "Requesting FW %s now...\n", ctx->firmware_name);
	ret = FUNC10(THIS_MODULE, true, ctx->firmware_name,
				      ctx->dev, GFP_KERNEL, ctx, sst_firmware_load_cb);
	if (ret) {
		FUNC2(ctx->dev, "Firmware download failed:%d\n", ret);
		goto do_free_mem;
	}

	ret = FUNC17(&ctx->dev->kobj,
				 &sst_fw_version_attr_group);
	if (ret) {
		FUNC2(ctx->dev,
			"Unable to create sysfs\n");
		goto err_sysfs;
	}

	FUNC13(ctx->dev);
	return 0;
err_sysfs:
	FUNC18(&ctx->dev->kobj, &sst_fw_version_attr_group);

do_free_mem:
	FUNC0(ctx->post_msg_wq);
	return ret;
}