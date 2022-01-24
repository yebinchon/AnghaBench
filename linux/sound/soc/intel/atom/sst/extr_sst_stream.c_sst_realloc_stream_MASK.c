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
struct stream_info {int /*<<< orphan*/  status; int /*<<< orphan*/  alloc_param; int /*<<< orphan*/  pipe_id; int /*<<< orphan*/  task_id; } ;
struct TYPE_2__ {int result; } ;
struct snd_sst_alloc_response {TYPE_1__ str_type; } ;
struct intel_sst_drv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IPC_CMD ; 
 int /*<<< orphan*/  IPC_IA_ALLOC_STREAM_MRFLD ; 
 int SST_ERR_STREAM_IN_USE ; 
 int /*<<< orphan*/  STREAM_UN_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct stream_info* FUNC2 (struct intel_sst_drv*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_sst_drv*,int) ; 
 int FUNC5 (struct intel_sst_drv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,void**,int,int,int,int) ; 

int FUNC6(struct intel_sst_drv *sst_drv_ctx, int str_id)
{
	struct snd_sst_alloc_response *response;
	struct stream_info *str_info;
	void *data = NULL;
	int ret;

	str_info = FUNC2(sst_drv_ctx, str_id);
	if (!str_info)
		return -EINVAL;

	FUNC0(sst_drv_ctx->dev, "Alloc for str %d pipe %#x\n",
		str_id, str_info->pipe_id);

	ret = FUNC5(sst_drv_ctx, str_info->task_id, IPC_CMD,
			IPC_IA_ALLOC_STREAM_MRFLD, str_info->pipe_id,
			sizeof(str_info->alloc_param), &str_info->alloc_param,
			&data, true, true, false, true);

	if (ret < 0) {
		FUNC1(sst_drv_ctx->dev, "FW alloc failed ret %d\n", ret);
		/* alloc failed, so reset the state to uninit */
		str_info->status = STREAM_UN_INIT;
		str_id = ret;
	} else if (data) {
		response = (struct snd_sst_alloc_response *)data;
		ret = response->str_type.result;
		if (!ret)
			goto out;
		FUNC1(sst_drv_ctx->dev, "FW alloc failed ret %d\n", ret);
		if (ret == SST_ERR_STREAM_IN_USE) {
			FUNC1(sst_drv_ctx->dev,
				"FW not in clean state, send free for:%d\n", str_id);
			FUNC4(sst_drv_ctx, str_id);
		}
		str_id = -ret;
	}
out:
	FUNC3(data);
	return str_id;
}