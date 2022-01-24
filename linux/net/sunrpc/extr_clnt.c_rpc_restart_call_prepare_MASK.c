#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {TYPE_1__* tk_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rpc_call_prepare; } ;

/* Variables and functions */
 int FUNC0 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_prepare_task ; 
 int FUNC1 (struct rpc_task*) ; 

int
FUNC2(struct rpc_task *task)
{
	if (task->tk_ops->rpc_call_prepare != NULL)
		return FUNC0(task, rpc_prepare_task);
	return FUNC1(task);
}