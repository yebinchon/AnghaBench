#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rb_refresh_worker; } ;
struct TYPE_5__ {int /*<<< orphan*/  rep_connected; } ;
struct rpcrdma_xprt {TYPE_3__ rx_buf; TYPE_2__ rx_ep; int /*<<< orphan*/  rx_xprt; } ;
struct TYPE_4__ {int /*<<< orphan*/  rq_xid; } ;
struct rpcrdma_req {TYPE_1__ rl_slot; int /*<<< orphan*/  rl_registered; int /*<<< orphan*/  rl_free_mrs; } ;
struct rpcrdma_mr_seg {int dummy; } ;
struct rpcrdma_mr {struct rpcrdma_req* mr_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENODEV ; 
 struct rpcrdma_mr_seg* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rpcrdma_mr_seg* FUNC1 (struct rpcrdma_xprt*,struct rpcrdma_mr_seg*,int,int,int /*<<< orphan*/ ,struct rpcrdma_mr*) ; 
 struct rpcrdma_mr* FUNC2 (struct rpcrdma_xprt*) ; 
 struct rpcrdma_mr* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rpcrdma_mr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rpcrdma_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpcrdma_req*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rpcrdma_mr_seg *FUNC9(struct rpcrdma_xprt *r_xprt,
						 struct rpcrdma_req *req,
						 struct rpcrdma_mr_seg *seg,
						 int nsegs, bool writing,
						 struct rpcrdma_mr **mr)
{
	*mr = FUNC3(&req->rl_free_mrs);
	if (!*mr) {
		*mr = FUNC2(r_xprt);
		if (!*mr)
			goto out_getmr_err;
		FUNC6(req);
		(*mr)->mr_req = req;
	}

	FUNC4(*mr, &req->rl_registered);
	return FUNC1(r_xprt, seg, nsegs, writing, req->rl_slot.rq_xid, *mr);

out_getmr_err:
	FUNC7(req);
	FUNC8(&r_xprt->rx_xprt);
	if (r_xprt->rx_ep.rep_connected != -ENODEV)
		FUNC5(&r_xprt->rx_buf.rb_refresh_worker);
	return FUNC0(-EAGAIN);
}