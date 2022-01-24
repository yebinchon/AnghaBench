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
struct rpc_task {scalar_t__ tk_status; } ;
struct rpc_cb_add_xprt_calldata {int /*<<< orphan*/  xprt; int /*<<< orphan*/  xps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct rpc_task *task, void *calldata)
{
	struct rpc_cb_add_xprt_calldata *data = calldata;

	if (task->tk_status == 0)
		FUNC0(data->xps, data->xprt);
}