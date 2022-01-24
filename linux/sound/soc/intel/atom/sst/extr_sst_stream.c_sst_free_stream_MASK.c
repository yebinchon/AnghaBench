#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stream_info {scalar_t__ status; scalar_t__ prev; int /*<<< orphan*/  lock; int /*<<< orphan*/  pipe_id; int /*<<< orphan*/  task_id; } ;
struct intel_sst_drv {scalar_t__ sst_state; int /*<<< orphan*/  dev; int /*<<< orphan*/  sst_lock; } ;

/* Variables and functions */
 int EBADRQC ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  IPC_CMD ; 
 int /*<<< orphan*/  IPC_IA_FREE_STREAM_MRFLD ; 
 scalar_t__ SST_RESET ; 
 scalar_t__ STREAM_UN_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct stream_info* FUNC1 (struct intel_sst_drv*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct stream_info*) ; 
 int FUNC5 (struct intel_sst_drv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 

int FUNC6(struct intel_sst_drv *sst_drv_ctx, int str_id)
{
	int retval = 0;
	struct stream_info *str_info;

	FUNC0(sst_drv_ctx->dev, "SST DBG:sst_free_stream for %d\n", str_id);

	FUNC2(&sst_drv_ctx->sst_lock);
	if (sst_drv_ctx->sst_state == SST_RESET) {
		FUNC3(&sst_drv_ctx->sst_lock);
		return -ENODEV;
	}
	FUNC3(&sst_drv_ctx->sst_lock);
	str_info = FUNC1(sst_drv_ctx, str_id);
	if (!str_info)
		return -EINVAL;

	FUNC2(&str_info->lock);
	if (str_info->status != STREAM_UN_INIT) {
		str_info->prev =  str_info->status;
		str_info->status = STREAM_UN_INIT;
		FUNC3(&str_info->lock);

		FUNC0(sst_drv_ctx->dev, "Free for str %d pipe %#x\n",
				str_id, str_info->pipe_id);
		retval = FUNC5(sst_drv_ctx, str_info->task_id, IPC_CMD,
				IPC_IA_FREE_STREAM_MRFLD, str_info->pipe_id, 0,
				NULL, NULL, true, true, false, true);

		FUNC0(sst_drv_ctx->dev, "sst: wait for free returned %d\n",
				retval);
		FUNC2(&sst_drv_ctx->sst_lock);
		FUNC4(str_info);
		FUNC3(&sst_drv_ctx->sst_lock);
		FUNC0(sst_drv_ctx->dev, "SST DBG:Stream freed\n");
	} else {
		FUNC3(&str_info->lock);
		retval = -EBADRQC;
		FUNC0(sst_drv_ctx->dev, "SST DBG:BADQRC for stream\n");
	}

	return retval;
}