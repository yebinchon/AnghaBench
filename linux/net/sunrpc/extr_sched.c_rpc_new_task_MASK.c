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
struct rpc_task_setup {struct rpc_task* task; } ;
struct rpc_task {unsigned short tk_flags; } ;

/* Variables and functions */
 unsigned short RPC_TASK_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rpc_task*) ; 
 struct rpc_task* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*,struct rpc_task_setup const*) ; 

struct rpc_task *FUNC3(const struct rpc_task_setup *setup_data)
{
	struct rpc_task	*task = setup_data->task;
	unsigned short flags = 0;

	if (task == NULL) {
		task = FUNC1();
		flags = RPC_TASK_DYNAMIC;
	}

	FUNC2(task, setup_data);
	task->tk_flags |= flags;
	FUNC0("RPC:       allocated task %p\n", task);
	return task;
}