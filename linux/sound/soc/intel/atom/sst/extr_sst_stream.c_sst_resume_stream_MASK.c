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
struct stream_info {scalar_t__ status; scalar_t__ resume_status; scalar_t__ resume_prev; scalar_t__ prev; int /*<<< orphan*/  pipe_id; int /*<<< orphan*/  task_id; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; int /*<<< orphan*/  sst_lock; } ;

/* Variables and functions */
 int EBADRQC ; 
 int EINVAL ; 
 int /*<<< orphan*/  IPC_CMD ; 
 int /*<<< orphan*/  IPC_IA_RESUME_STREAM_MRFLD ; 
 int SST_ERR_INVALID_STREAM_ID ; 
 scalar_t__ STREAM_INIT ; 
 scalar_t__ STREAM_PAUSED ; 
 scalar_t__ STREAM_RUNNING ; 
 void* STREAM_UN_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct stream_info* FUNC2 (struct intel_sst_drv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct stream_info*) ; 
 int FUNC6 (struct intel_sst_drv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC7 (struct intel_sst_drv*,int) ; 

int FUNC8(struct intel_sst_drv *sst_drv_ctx, int str_id)
{
	int retval = 0;
	struct stream_info *str_info;

	FUNC0(sst_drv_ctx->dev, "SST DBG:sst_resume_stream for %d\n", str_id);
	str_info = FUNC2(sst_drv_ctx, str_id);
	if (!str_info)
		return -EINVAL;
	if (str_info->status == STREAM_RUNNING)
		return 0;

	if (str_info->resume_status == STREAM_PAUSED &&
	    str_info->resume_prev == STREAM_RUNNING) {
		/*
		 * Stream was running before suspend and re-created on resume,
		 * start it to get back to running state.
		 */
		FUNC0(sst_drv_ctx->dev, "restart recreated stream after resume\n");
		str_info->status = STREAM_RUNNING;
		str_info->prev = STREAM_PAUSED;
		retval = FUNC7(sst_drv_ctx, str_id);
		str_info->resume_status = STREAM_UN_INIT;
	} else if (str_info->resume_status == STREAM_PAUSED &&
		   str_info->resume_prev == STREAM_INIT) {
		/*
		 * Stream was idle before suspend and re-created on resume,
		 * keep it as is.
		 */
		FUNC0(sst_drv_ctx->dev, "leaving recreated stream idle after resume\n");
		str_info->status = STREAM_INIT;
		str_info->prev = STREAM_PAUSED;
		str_info->resume_status = STREAM_UN_INIT;
	} else if (str_info->status == STREAM_PAUSED) {
		retval = FUNC6(sst_drv_ctx, str_info->task_id,
				IPC_CMD, IPC_IA_RESUME_STREAM_MRFLD,
				str_info->pipe_id, 0, NULL, NULL,
				true, true, false, true);

		if (!retval) {
			if (str_info->prev == STREAM_RUNNING)
				str_info->status = STREAM_RUNNING;
			else
				str_info->status = STREAM_INIT;
			str_info->prev = STREAM_PAUSED;
		} else if (retval == -SST_ERR_INVALID_STREAM_ID) {
			retval = -EINVAL;
			FUNC3(&sst_drv_ctx->sst_lock);
			FUNC5(str_info);
			FUNC4(&sst_drv_ctx->sst_lock);
		}
	} else {
		retval = -EBADRQC;
		FUNC1(sst_drv_ctx->dev, "SST ERR: BADQRC for stream\n");
	}

	return retval;
}