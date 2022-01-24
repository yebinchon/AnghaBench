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
struct rpc_task {int /*<<< orphan*/  tk_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 

__attribute__((used)) static bool FUNC3(struct rpc_task *task)
{
	/* We shouldn't ever put an inactive task to sleep */
	if (FUNC1(!FUNC0(task))) {
		task->tk_status = -EIO;
		FUNC2(task);
		return false;
	}
	return true;
}