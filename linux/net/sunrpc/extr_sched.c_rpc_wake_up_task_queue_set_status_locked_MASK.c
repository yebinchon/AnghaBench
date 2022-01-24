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
struct rpc_wait_queue {int dummy; } ;
struct rpc_task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  rpc_task_action_set_status ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rpc_wait_queue*,struct rpc_task*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  rpciod_workqueue ; 

__attribute__((used)) static void
FUNC1(struct rpc_wait_queue *queue,
		struct rpc_task *task, int status)
{
	FUNC0(rpciod_workqueue, queue,
			task, rpc_task_action_set_status, &status);
}