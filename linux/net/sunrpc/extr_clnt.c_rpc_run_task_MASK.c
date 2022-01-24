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
struct rpc_task_setup {int /*<<< orphan*/  rpc_message; int /*<<< orphan*/  rpc_client; } ;
struct rpc_task {int /*<<< orphan*/  tk_count; int /*<<< orphan*/ * tk_action; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 struct rpc_task* FUNC3 (struct rpc_task_setup const*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*,int /*<<< orphan*/ ) ; 

struct rpc_task *FUNC6(const struct rpc_task_setup *task_setup_data)
{
	struct rpc_task *task;

	task = FUNC3(task_setup_data);

	FUNC4(task, task_setup_data->rpc_client);
	FUNC5(task, task_setup_data->rpc_message);

	if (task->tk_action == NULL)
		FUNC1(task);

	FUNC0(&task->tk_count);
	FUNC2(task);
	return task;
}