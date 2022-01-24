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
struct rpc_xprt {int /*<<< orphan*/  transport_lock; } ;
struct rpc_rqst {scalar_t__ rq_cong; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_xprt*,struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool
FUNC3(struct rpc_xprt *xprt, struct rpc_rqst *req)
{
	bool ret = false;

	if (req->rq_cong)
		return true;
	FUNC1(&xprt->transport_lock);
	ret = FUNC0(xprt, req) != 0;
	FUNC2(&xprt->transport_lock);
	return ret;
}