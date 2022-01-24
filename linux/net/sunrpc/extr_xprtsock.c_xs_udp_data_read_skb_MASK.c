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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct rpc_xprt {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  transport_lock; } ;
struct rpc_task {int dummy; } ;
struct TYPE_2__ {int buflen; } ;
struct rpc_rqst {TYPE_1__ rq_private_buf; struct rpc_task* rq_task; } ;
typedef  int /*<<< orphan*/  _xid ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  UDP_MIB_INDATAGRAMS ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*,struct rpc_task*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_task*,int) ; 
 struct rpc_rqst* FUNC8 (struct rpc_xprt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC11 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC12(struct rpc_xprt *xprt,
		struct sock *sk,
		struct sk_buff *skb)
{
	struct rpc_task *task;
	struct rpc_rqst *rovr;
	int repsize, copied;
	u32 _xid;
	__be32 *xp;

	repsize = skb->len;
	if (repsize < 4) {
		FUNC2("RPC:       impossible RPC reply size %d!\n", repsize);
		return;
	}

	/* Copy the XID from the skb... */
	xp = FUNC3(skb, 0, sizeof(_xid), &_xid);
	if (xp == NULL)
		return;

	/* Look up and lock the request corresponding to the given XID */
	FUNC4(&xprt->queue_lock);
	rovr = FUNC8(xprt, *xp);
	if (!rovr)
		goto out_unlock;
	FUNC9(rovr);
	FUNC11(rovr->rq_task);
	FUNC5(&xprt->queue_lock);
	task = rovr->rq_task;

	if ((copied = rovr->rq_private_buf.buflen) > repsize)
		copied = repsize;

	/* Suck it into the iovec, verify checksum if not done by hw. */
	if (FUNC1(&rovr->rq_private_buf, skb)) {
		FUNC4(&xprt->queue_lock);
		FUNC0(sk, UDP_MIB_INERRORS);
		goto out_unpin;
	}


	FUNC4(&xprt->transport_lock);
	FUNC6(xprt, task, copied);
	FUNC5(&xprt->transport_lock);
	FUNC4(&xprt->queue_lock);
	FUNC7(task, copied);
	FUNC0(sk, UDP_MIB_INDATAGRAMS);
out_unpin:
	FUNC10(rovr);
 out_unlock:
	FUNC5(&xprt->queue_lock);
}