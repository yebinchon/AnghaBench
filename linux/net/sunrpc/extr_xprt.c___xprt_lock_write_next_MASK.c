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
struct rpc_xprt {int /*<<< orphan*/  sending; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPRT_LOCKED ; 
 int /*<<< orphan*/  XPRT_WRITE_SPACE ; 
 int /*<<< orphan*/  __xprt_lock_write_func ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rpc_xprt*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  xprtiod_workqueue ; 

__attribute__((used)) static void FUNC4(struct rpc_xprt *xprt)
{
	if (FUNC1(XPRT_LOCKED, &xprt->state))
		return;
	if (FUNC2(XPRT_WRITE_SPACE, &xprt->state))
		goto out_unlock;
	if (FUNC0(xprtiod_workqueue, &xprt->sending,
				__xprt_lock_write_func, xprt))
		return;
out_unlock:
	FUNC3(xprt);
}