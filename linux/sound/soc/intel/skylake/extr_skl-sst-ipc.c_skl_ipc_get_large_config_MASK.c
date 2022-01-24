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
typedef  int u64 ;
typedef  unsigned int u32 ;
struct sst_ipc_message {unsigned int* data; int header; size_t size; int /*<<< orphan*/  member_0; } ;
struct sst_generic_ipc {int /*<<< orphan*/  dev; } ;
struct skl_ipc_large_config_msg {int /*<<< orphan*/  large_param_id; int /*<<< orphan*/  param_data_size; int /*<<< orphan*/  module_id; int /*<<< orphan*/  instance_id; } ;
struct skl_ipc_header {int /*<<< orphan*/  extension; int /*<<< orphan*/  primary; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IPC_DATA_OFFSET_SZ_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC_MOD_LARGE_CONFIG_GET ; 
 int /*<<< orphan*/  IPC_MOD_MSG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC_MSG_REQUEST ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 size_t SKL_ADSP_W1_SZ ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int* FUNC10 (unsigned int*,int,int /*<<< orphan*/ ) ; 
 unsigned int* FUNC11 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sst_generic_ipc*,struct sst_ipc_message,struct sst_ipc_message*) ; 

int FUNC13(struct sst_generic_ipc *ipc,
		struct skl_ipc_large_config_msg *msg,
		u32 **payload, size_t *bytes)
{
	struct skl_ipc_header header = {0};
	struct sst_ipc_message request, reply = {0};
	unsigned int *buf;
	int ret;

	reply.data = FUNC11(SKL_ADSP_W1_SZ, GFP_KERNEL);
	if (!reply.data)
		return -ENOMEM;

	header.primary = FUNC8(IPC_MOD_MSG);
	header.primary |= FUNC7(IPC_MSG_REQUEST);
	header.primary |= FUNC2(IPC_MOD_LARGE_CONFIG_GET);
	header.primary |= FUNC6(msg->instance_id);
	header.primary |= FUNC5(msg->module_id);

	header.extension = FUNC0(msg->param_data_size);
	header.extension |= FUNC4(msg->large_param_id);
	header.extension |= FUNC1(1);
	header.extension |= FUNC3(1);

	request.header = *(u64 *)&header;
	request.data = *payload;
	request.size = *bytes;
	reply.size = SKL_ADSP_W1_SZ;

	ret = FUNC12(ipc, request, &reply);
	if (ret < 0)
		FUNC9(ipc->dev, "ipc: get large config fail, err: %d\n", ret);

	reply.size = (reply.header >> 32) & IPC_DATA_OFFSET_SZ_MASK;
	buf = FUNC10(reply.data, reply.size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	*payload = buf;
	*bytes = reply.size;

	return ret;
}