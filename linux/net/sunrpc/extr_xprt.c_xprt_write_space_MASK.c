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
struct rpc_xprt {int /*<<< orphan*/  transport_lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPRT_WRITE_SPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rpc_xprt*) ; 

bool FUNC4(struct rpc_xprt *xprt)
{
	bool ret;

	if (!FUNC2(XPRT_WRITE_SPACE, &xprt->state))
		return false;
	FUNC0(&xprt->transport_lock);
	ret = FUNC3(xprt);
	FUNC1(&xprt->transport_lock);
	return ret;
}