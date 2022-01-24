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
struct sst_ipc_message {int header; int /*<<< orphan*/  member_0; } ;
struct sst_hsw {int /*<<< orphan*/  ipc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_GLB_STREAM_MESSAGE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IPC_STR_ID_SHIFT ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct sst_ipc_message) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct sst_ipc_message,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct sst_hsw *hsw, int type,
	int stream_id, int wait)
{
	struct sst_ipc_message request = {0};

	request.header = FUNC0(IPC_GLB_STREAM_MESSAGE);
	request.header |= FUNC1(type) | (stream_id << IPC_STR_ID_SHIFT);

	if (wait)
		return FUNC3(&hsw->ipc, request, NULL);
	else
		return FUNC2(&hsw->ipc, request);
}