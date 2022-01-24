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
struct rpc_xprt {TYPE_1__* ops; int /*<<< orphan*/  transport_lock; } ;
struct rpc_task {int /*<<< orphan*/  tk_pid; struct rpc_rqst* tk_rqstp; struct rpc_xprt* tk_xprt; scalar_t__ tk_client; } ;
struct rpc_rqst {int /*<<< orphan*/  (* rq_release_snd_buf ) (struct rpc_rqst*) ;int /*<<< orphan*/ * rq_cred; int /*<<< orphan*/  rq_snd_buf; int /*<<< orphan*/  rq_rcv_buf; scalar_t__ rq_buffer; struct rpc_xprt* rq_xprt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_slot ) (struct rpc_xprt*,struct rpc_rqst*) ;int /*<<< orphan*/  (* buf_free ) (struct rpc_task*) ;int /*<<< orphan*/  (* release_request ) (struct rpc_task*) ;int /*<<< orphan*/  (* release_xprt ) (struct rpc_xprt*,struct rpc_task*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct rpc_rqst*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_xprt*,struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC13 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC14 (struct rpc_xprt*,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC15 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC16 (struct rpc_xprt*) ; 

void FUNC17(struct rpc_task *task)
{
	struct rpc_xprt	*xprt;
	struct rpc_rqst	*req = task->tk_rqstp;

	if (req == NULL) {
		if (task->tk_client) {
			xprt = task->tk_xprt;
			FUNC14(xprt, task);
		}
		return;
	}

	xprt = req->rq_xprt;
	FUNC15(task);
	FUNC4(&xprt->transport_lock);
	xprt->ops->release_xprt(xprt, task);
	if (xprt->ops->release_request)
		xprt->ops->release_request(task);
	FUNC16(xprt);
	FUNC5(&xprt->transport_lock);
	if (req->rq_buffer)
		xprt->ops->buf_free(task);
	FUNC13(xprt);
	FUNC11(&req->rq_rcv_buf);
	FUNC11(&req->rq_snd_buf);
	if (req->rq_cred != NULL)
		FUNC3(req->rq_cred);
	task->tk_rqstp = NULL;
	if (req->rq_release_snd_buf)
		req->rq_release_snd_buf(req);

	FUNC1("RPC: %5u release request %p\n", task->tk_pid, req);
	if (FUNC2(!FUNC0(req)))
		xprt->ops->free_slot(xprt, req);
	else
		FUNC12(req);
}