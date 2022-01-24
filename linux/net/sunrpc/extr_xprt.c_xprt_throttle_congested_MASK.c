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
struct rpc_xprt {int /*<<< orphan*/  reserve_lock; int /*<<< orphan*/  backlog; int /*<<< orphan*/  state; } ;
struct rpc_task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPRT_CONGESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct rpc_xprt *xprt, struct rpc_task *task)
{
	bool ret = false;

	if (!FUNC3(XPRT_CONGESTED, &xprt->state))
		goto out;
	FUNC1(&xprt->reserve_lock);
	if (FUNC3(XPRT_CONGESTED, &xprt->state)) {
		FUNC0(&xprt->backlog, task, NULL);
		ret = true;
	}
	FUNC2(&xprt->reserve_lock);
out:
	return ret;
}