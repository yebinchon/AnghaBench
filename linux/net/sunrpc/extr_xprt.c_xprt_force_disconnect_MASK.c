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
struct rpc_xprt {int /*<<< orphan*/  transport_lock; scalar_t__ snd_task; int /*<<< orphan*/  pending; int /*<<< orphan*/  task_cleanup; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTCONN ; 
 int /*<<< orphan*/  XPRT_CLOSE_WAIT ; 
 int /*<<< orphan*/  XPRT_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xprtiod_workqueue ; 

void FUNC6(struct rpc_xprt *xprt)
{
	/* Don't race with the test_bit() in xprt_clear_locked() */
	FUNC3(&xprt->transport_lock);
	FUNC2(XPRT_CLOSE_WAIT, &xprt->state);
	/* Try to schedule an autoclose RPC call */
	if (FUNC5(XPRT_LOCKED, &xprt->state) == 0)
		FUNC0(xprtiod_workqueue, &xprt->task_cleanup);
	else if (xprt->snd_task)
		FUNC1(&xprt->pending,
				xprt->snd_task, -ENOTCONN);
	FUNC4(&xprt->transport_lock);
}