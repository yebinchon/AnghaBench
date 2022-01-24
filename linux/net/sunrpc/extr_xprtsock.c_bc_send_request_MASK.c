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
struct svc_xprt {int /*<<< orphan*/  xpt_mutex; int /*<<< orphan*/  xpt_flags; } ;
struct rpc_rqst {TYPE_1__* rq_xprt; int /*<<< orphan*/  rq_xid; } ;
struct TYPE_2__ {struct svc_xprt* bc_xprt; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  XPT_DEAD ; 
 int FUNC0 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct rpc_rqst *req)
{
	struct svc_xprt	*xprt;
	int len;

	FUNC1("sending request with xid: %08x\n", FUNC4(req->rq_xid));
	/*
	 * Get the server socket associated with this callback xprt
	 */
	xprt = req->rq_xprt->bc_xprt;

	/*
	 * Grab the mutex to serialize data as the connection is shared
	 * with the fore channel
	 */
	FUNC2(&xprt->xpt_mutex);
	if (FUNC5(XPT_DEAD, &xprt->xpt_flags))
		len = -ENOTCONN;
	else
		len = FUNC0(req);
	FUNC3(&xprt->xpt_mutex);

	if (len > 0)
		len = 0;

	return len;
}