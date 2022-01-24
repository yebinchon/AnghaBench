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
struct rpc_task {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  rpciod_workqueue ; 

void FUNC4(struct rpc_task *task)
{
	bool is_async = FUNC0(task);

	FUNC3(task);
	FUNC2(rpciod_workqueue, task);
	if (!is_async)
		FUNC1(task);
}