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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct sst_ipc_message {int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct sst_generic_ipc {int /*<<< orphan*/  dev; } ;
struct skl_ipc_header {int /*<<< orphan*/  primary; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_FW_GEN_MSG ; 
 int /*<<< orphan*/  IPC_GLB_LOAD_LIBRARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC_MSG_REQUEST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct sst_generic_ipc*,struct sst_ipc_message) ; 
 int FUNC7 (struct sst_generic_ipc*,struct sst_ipc_message,int /*<<< orphan*/ *) ; 

int FUNC8(struct sst_generic_ipc *ipc,
				u8 dma_id, u8 table_id, bool wait)
{
	struct skl_ipc_header header = {0};
	struct sst_ipc_message request = {0};
	int ret = 0;

	header.primary = FUNC4(IPC_FW_GEN_MSG);
	header.primary |= FUNC3(IPC_MSG_REQUEST);
	header.primary |= FUNC0(IPC_GLB_LOAD_LIBRARY);
	header.primary |= FUNC2(table_id);
	header.primary |= FUNC1(dma_id);
	request.header = *(u64 *)(&header);

	if (wait)
		ret = FUNC7(ipc, request, NULL);
	else
		ret = FUNC6(ipc, request);

	if (ret < 0)
		FUNC5(ipc->dev, "ipc: load lib failed\n");

	return ret;
}