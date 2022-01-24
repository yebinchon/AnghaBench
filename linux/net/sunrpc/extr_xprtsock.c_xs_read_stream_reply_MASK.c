#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ copied; int /*<<< orphan*/  xid; } ;
struct rpc_xprt {int /*<<< orphan*/  queue_lock; } ;
struct sock_xprt {TYPE_2__ recv; struct rpc_xprt xprt; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct rpc_rqst {TYPE_1__ rq_private_buf; int /*<<< orphan*/  rq_task; } ;
struct msghdr {int msg_flags; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int MSG_EOR ; 
 int MSG_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct rpc_rqst* FUNC3 (struct rpc_xprt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock_xprt*,struct msghdr*,int,struct rpc_rqst*) ; 

__attribute__((used)) static ssize_t
FUNC7(struct sock_xprt *transport, struct msghdr *msg, int flags)
{
	struct rpc_xprt *xprt = &transport->xprt;
	struct rpc_rqst *req;
	ssize_t ret = 0;

	/* Look up and lock the request corresponding to the given XID */
	FUNC0(&xprt->queue_lock);
	req = FUNC3(xprt, transport->recv.xid);
	if (!req || (transport->recv.copied && !req->rq_private_buf.len)) {
		msg->msg_flags |= MSG_TRUNC;
		goto out;
	}
	FUNC4(req);
	FUNC1(&xprt->queue_lock);

	ret = FUNC6(transport, msg, flags, req);

	FUNC0(&xprt->queue_lock);
	if (msg->msg_flags & (MSG_EOR|MSG_TRUNC))
		FUNC2(req->rq_task, transport->recv.copied);
	else
		req->rq_private_buf.len = transport->recv.copied;
	FUNC5(req);
out:
	FUNC1(&xprt->queue_lock);
	return ret;
}