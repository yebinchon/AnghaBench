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
struct sst_ipc_message {int size; struct sst_hsw_ipc_fw_version* data; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct sst_hsw_ipc_fw_version {int dummy; } ;
struct sst_hsw {int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_GLB_GET_FW_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sst_ipc_message,struct sst_ipc_message*) ; 

int FUNC3(struct sst_hsw *hsw,
	struct sst_hsw_ipc_fw_version *version)
{
	struct sst_ipc_message request = {0}, reply = {0};
	int ret;

	request.header = FUNC0(IPC_GLB_GET_FW_VERSION);
	reply.data = version;
	reply.size = sizeof(*version);
	ret = FUNC2(&hsw->ipc, request, &reply);
	if (ret < 0)
		FUNC1(hsw->dev, "error: get version failed\n");

	return ret;
}