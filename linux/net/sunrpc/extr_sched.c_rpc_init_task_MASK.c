#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rpc_task_setup {int /*<<< orphan*/  rpc_op_cred; int /*<<< orphan*/  rpc_xprt; int /*<<< orphan*/  rpc_client; int /*<<< orphan*/  workqueue; scalar_t__ priority; int /*<<< orphan*/  callback_data; TYPE_1__* callback_ops; int /*<<< orphan*/  flags; } ;
struct rpc_task {int /*<<< orphan*/  tk_action; TYPE_1__* tk_ops; int /*<<< orphan*/  tk_op_cred; int /*<<< orphan*/  tk_xprt; int /*<<< orphan*/  tk_workqueue; int /*<<< orphan*/  tk_owner; scalar_t__ tk_priority; int /*<<< orphan*/  tk_task; int /*<<< orphan*/  tk_calldata; int /*<<< orphan*/  tk_flags; int /*<<< orphan*/  tk_count; } ;
struct TYPE_5__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_4__ {int /*<<< orphan*/ * rpc_call_prepare; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RPC_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*) ; 
 int /*<<< orphan*/  rpc_prepare_task ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct rpc_task *task, const struct rpc_task_setup *task_setup_data)
{
	FUNC4(task, 0, sizeof(*task));
	FUNC1(&task->tk_count, 1);
	task->tk_flags  = task_setup_data->flags;
	task->tk_ops = task_setup_data->callback_ops;
	task->tk_calldata = task_setup_data->callback_data;
	FUNC0(&task->tk_task);

	task->tk_priority = task_setup_data->priority - RPC_PRIORITY_LOW;
	task->tk_owner = current->tgid;

	/* Initialize workqueue for async tasks */
	task->tk_workqueue = task_setup_data->workqueue;

	task->tk_xprt = FUNC6(task_setup_data->rpc_client,
			FUNC8(task_setup_data->rpc_xprt));

	task->tk_op_cred = FUNC3(task_setup_data->rpc_op_cred);

	if (task->tk_ops->rpc_call_prepare != NULL)
		task->tk_action = rpc_prepare_task;

	FUNC5(task);

	FUNC2("RPC:       new task initialized, procpid %u\n",
				FUNC7(current));
}