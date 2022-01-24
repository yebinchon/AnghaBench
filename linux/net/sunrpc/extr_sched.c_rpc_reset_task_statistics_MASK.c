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
struct rpc_task {int tk_flags; scalar_t__ tk_timeouts; } ;

/* Variables and functions */
 int RPC_CALL_MAJORSEEN ; 
 int RPC_TASK_SENT ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*) ; 

__attribute__((used)) static void
FUNC1(struct rpc_task *task)
{
	task->tk_timeouts = 0;
	task->tk_flags &= ~(RPC_CALL_MAJORSEEN|RPC_TASK_SENT);
	FUNC0(task);
}