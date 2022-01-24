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
typedef  scalar_t__ u32 ;
struct sst_ipc_message {int header; scalar_t__ size; struct sst_hsw_transfer_parameter* data; int /*<<< orphan*/  member_0; } ;
struct sst_hsw_transfer_parameter {scalar_t__ data_size; scalar_t__ parameter_id; int /*<<< orphan*/  data; } ;
struct sst_hsw_transfer_list {int dummy; } ;
struct sst_hsw {int /*<<< orphan*/  ipc; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPC_GLB_MODULE_OPERATION ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC_MODULE_SET_PARAMETER ; 
 scalar_t__ SST_HSW_IPC_MAX_SHORT_PARAMETER_SIZE ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sst_hsw_transfer_parameter*) ; 
 struct sst_hsw_transfer_parameter* FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct sst_ipc_message,int /*<<< orphan*/ *) ; 

int FUNC11(struct sst_hsw *hsw,
	u32 module_id, u32 instance_id, u32 parameter_id,
	u32 param_size, char *param)
{
	int ret;
	struct sst_ipc_message request = {0};
	u32 payload_size = 0;
	struct sst_hsw_transfer_parameter *parameter;
	struct device *dev = hsw->dev;

	request.header = FUNC1(IPC_GLB_MODULE_OPERATION) |
			FUNC3(IPC_MODULE_SET_PARAMETER) |
			FUNC2(module_id);
	FUNC4(dev, "sst_hsw_module_set_param header=%x\n",
			(u32)request.header);

	payload_size = param_size +
		sizeof(struct sst_hsw_transfer_parameter) -
		sizeof(struct sst_hsw_transfer_list);
	FUNC4(dev, "parameter size : %d\n", param_size);
	FUNC4(dev, "payload size   : %d\n", payload_size);

	if (payload_size <= SST_HSW_IPC_MAX_SHORT_PARAMETER_SIZE) {
		/* short parameter, mailbox can contain data */
		FUNC4(dev, "transfer parameter size : %zu\n",
			request.size);

		request.size = FUNC0(payload_size, 4);
		FUNC4(dev, "transfer parameter aligned size : %zu\n",
			request.size);

		parameter = FUNC8(request.size, GFP_KERNEL);
		if (parameter == NULL)
			return -ENOMEM;

		FUNC9(parameter->data, param, param_size);
	} else {
		FUNC6(dev, "transfer parameter size too large!");
		return 0;
	}

	parameter->parameter_id = parameter_id;
	parameter->data_size = param_size;
	request.data = parameter;

	ret = FUNC10(&hsw->ipc, request, NULL);
	if (ret < 0)
		FUNC5(dev, "ipc: module set parameter failed - %d\n", ret);

	FUNC7(parameter);

	return ret;
}