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
struct rpc_task {int /*<<< orphan*/  tk_task; int /*<<< orphan*/  tk_flags; struct rpc_clnt* tk_client; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_tasks; int /*<<< orphan*/  cl_swapper; scalar_t__ cl_noretranstimeo; scalar_t__ cl_softerr; scalar_t__ cl_softrtry; int /*<<< orphan*/  cl_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_TASK_NO_RETRANS_TIMEOUT ; 
 int /*<<< orphan*/  RPC_TASK_SOFT ; 
 int /*<<< orphan*/  RPC_TASK_SWAPPER ; 
 int /*<<< orphan*/  RPC_TASK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*,struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void FUNC6(struct rpc_task *task, struct rpc_clnt *clnt)
{

	if (clnt != NULL) {
		FUNC3(task, clnt);
		task->tk_client = clnt;
		FUNC0(&clnt->cl_count);
		if (clnt->cl_softrtry)
			task->tk_flags |= RPC_TASK_SOFT;
		if (clnt->cl_softerr)
			task->tk_flags |= RPC_TASK_TIMEOUT;
		if (clnt->cl_noretranstimeo)
			task->tk_flags |= RPC_TASK_NO_RETRANS_TIMEOUT;
		if (FUNC1(&clnt->cl_swapper))
			task->tk_flags |= RPC_TASK_SWAPPER;
		/* Add to the client's list of all tasks */
		FUNC4(&clnt->cl_lock);
		FUNC2(&task->tk_task, &clnt->cl_tasks);
		FUNC5(&clnt->cl_lock);
	}
}