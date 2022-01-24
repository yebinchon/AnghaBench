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
struct rpc_xprt {int /*<<< orphan*/  task_cleanup; int /*<<< orphan*/  timer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  XPRT_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xprt_destroy_cb ; 

__attribute__((used)) static void FUNC5(struct rpc_xprt *xprt)
{
	FUNC2("RPC:       destroying transport %p\n", xprt);

	/*
	 * Exclude transport connect/disconnect handlers and autoclose
	 */
	FUNC4(&xprt->state, XPRT_LOCKED, TASK_UNINTERRUPTIBLE);

	FUNC1(&xprt->timer);

	/*
	 * Destroy sockets etc from the system workqueue so they can
	 * safely flush receive work running on rpciod.
	 */
	FUNC0(&xprt->task_cleanup, xprt_destroy_cb);
	FUNC3(&xprt->task_cleanup);
}