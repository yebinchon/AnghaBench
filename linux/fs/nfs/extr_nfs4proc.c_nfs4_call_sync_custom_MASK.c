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
struct rpc_task_setup {int dummy; } ;
struct rpc_task {int tk_status; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 struct rpc_task* FUNC3 (struct rpc_task_setup*) ; 

__attribute__((used)) static int FUNC4(struct rpc_task_setup *task_setup)
{
	int ret;
	struct rpc_task *task;

	task = FUNC3(task_setup);
	if (FUNC0(task))
		return FUNC1(task);

	ret = task->tk_status;
	FUNC2(task);
	return ret;
}