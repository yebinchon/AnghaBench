#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct rpc_task {int /*<<< orphan*/  tk_status; struct rpc_rqst* tk_rqstp; } ;
struct TYPE_6__ {TYPE_1__* head; } ;
struct rpc_rqst {TYPE_2__ rq_snd_buf; scalar_t__ rq_reply_bytes_recvd; int /*<<< orphan*/  rq_rcvsize; int /*<<< orphan*/  rq_rbuffer; TYPE_2__ rq_rcv_buf; int /*<<< orphan*/  rq_callsize; int /*<<< orphan*/  rq_buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  iov_base; scalar_t__ iov_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*,struct xdr_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*,struct xdr_stream*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct xdr_stream*,TYPE_2__*,int /*<<< orphan*/ ,struct rpc_rqst*) ; 

__attribute__((used)) static void
FUNC5(struct rpc_task *task)
{
	struct rpc_rqst	*req = task->tk_rqstp;
	struct xdr_stream xdr;

	FUNC2(&req->rq_snd_buf,
		     req->rq_buffer,
		     req->rq_callsize);
	FUNC2(&req->rq_rcv_buf,
		     req->rq_rbuffer,
		     req->rq_rcvsize);

	req->rq_reply_bytes_recvd = 0;
	req->rq_snd_buf.head[0].iov_len = 0;
	FUNC4(&xdr, &req->rq_snd_buf,
			req->rq_snd_buf.head[0].iov_base, req);
	FUNC3(&req->rq_snd_buf);
	if (FUNC0(task, &xdr))
		return;

	task->tk_status = FUNC1(task, &xdr);
}