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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct sst_ipc_message {int size; void* data; int /*<<< orphan*/  header; } ;
struct sst_generic_ipc {int /*<<< orphan*/  dev; } ;
struct skl_ipc_header {int /*<<< orphan*/  primary; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_FW_GEN_MSG ; 
 int /*<<< orphan*/  IPC_GLB_LOAD_MULTIPLE_MODS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC_MSG_REQUEST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (struct sst_generic_ipc*,struct sst_ipc_message) ; 

int FUNC6(struct sst_generic_ipc *ipc,
				u8 module_cnt, void *data)
{
	struct skl_ipc_header header = {0};
	struct sst_ipc_message request;
	int ret;

	header.primary = FUNC3(IPC_FW_GEN_MSG);
	header.primary |= FUNC2(IPC_MSG_REQUEST);
	header.primary |= FUNC0(IPC_GLB_LOAD_MULTIPLE_MODS);
	header.primary |= FUNC1(module_cnt);

	request.header = *(u64 *)(&header);
	request.data = data;
	request.size = sizeof(u16) * module_cnt;

	ret = FUNC5(ipc, request);
	if (ret < 0)
		FUNC4(ipc->dev, "ipc: load modules failed :%d\n", ret);

	return ret;
}