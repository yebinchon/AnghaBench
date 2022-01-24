#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ qlen; } ;
struct TYPE_13__ {scalar_t__ qlen; } ;
struct TYPE_12__ {int /*<<< orphan*/  pending_u; int /*<<< orphan*/  sending_u; int /*<<< orphan*/  bklog_u; scalar_t__ recvs; scalar_t__ sends; int /*<<< orphan*/  req_u; } ;
struct TYPE_11__ {scalar_t__ qlen; } ;
struct rpc_xprt {unsigned int connect_cookie; TYPE_7__ sending; int /*<<< orphan*/  transport_lock; TYPE_6__ pending; TYPE_5__ stat; TYPE_4__ backlog; TYPE_1__* ops; } ;
struct rpc_task {int /*<<< orphan*/  tk_flags; TYPE_3__* tk_client; } ;
struct rpc_rqst {unsigned int rq_connect_cookie; int /*<<< orphan*/  rq_ntrans; int /*<<< orphan*/  rq_bytes_sent; struct rpc_task* rq_task; struct rpc_xprt* rq_xprt; } ;
struct TYPE_10__ {TYPE_2__* cl_stats; } ;
struct TYPE_9__ {int /*<<< orphan*/  rpcretrans; } ;
struct TYPE_8__ {int (* send_request ) (struct rpc_rqst*) ;} ;

/* Variables and functions */
 int EBADMSG ; 
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  RPC_TASK_SENT ; 
 int FUNC1 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,struct rpc_task*,int) ; 
 scalar_t__ FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_rqst*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_xprt*) ; 
 scalar_t__ FUNC9 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_task*) ; 

__attribute__((used)) static int
FUNC11(struct rpc_rqst *req, struct rpc_task *snd_task)
{
	struct rpc_xprt *xprt = req->rq_xprt;
	struct rpc_task *task = req->rq_task;
	unsigned int connect_cookie;
	int is_retrans = FUNC1(task);
	int status;

	if (!req->rq_bytes_sent) {
		if (FUNC9(task)) {
			status = 0;
			goto out_dequeue;
		}
		/* Verify that our message lies in the RPCSEC_GSS window */
		if (FUNC3(task)) {
			status = -EBADMSG;
			goto out_dequeue;
		}
		if (FUNC0(task)) {
			status = -ERESTARTSYS;
			goto out_dequeue;
		}
	}

	/*
	 * Update req->rq_ntrans before transmitting to avoid races with
	 * xprt_update_rtt(), which needs to know that it is recording a
	 * reply to the first transmission.
	 */
	req->rq_ntrans++;

	connect_cookie = xprt->connect_cookie;
	status = xprt->ops->send_request(req);
	if (status != 0) {
		req->rq_ntrans--;
		FUNC7(req, status);
		return status;
	}

	if (is_retrans)
		task->tk_client->cl_stats->rpcretrans++;

	FUNC8(xprt);

	task->tk_flags |= RPC_TASK_SENT;
	FUNC4(&xprt->transport_lock);

	xprt->stat.sends++;
	xprt->stat.req_u += xprt->stat.sends - xprt->stat.recvs;
	xprt->stat.bklog_u += xprt->backlog.qlen;
	xprt->stat.sending_u += xprt->sending.qlen;
	xprt->stat.pending_u += xprt->pending.qlen;
	FUNC5(&xprt->transport_lock);

	req->rq_connect_cookie = connect_cookie;
out_dequeue:
	FUNC7(req, status);
	FUNC10(task);
	FUNC2(&xprt->sending, task, status);
	return status;
}