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
struct xdr_stream {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rpc_proc; } ;
struct rpc_task {TYPE_2__ tk_msg; struct rpc_rqst* tk_rqstp; struct rpc_clnt* tk_client; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_xid; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_vers; int /*<<< orphan*/  cl_prog; } ;
typedef  void* __be32 ;
struct TYPE_3__ {int /*<<< orphan*/  p_proc; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int RPC_CALLHDRSIZE ; 
 int /*<<< orphan*/  RPC_VERSION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc_call ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*,int) ; 
 int FUNC2 (struct rpc_task*,struct xdr_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 void** FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int
FUNC5(struct rpc_task *task, struct xdr_stream *xdr)
{
	struct rpc_clnt *clnt = task->tk_client;
	struct rpc_rqst	*req = task->tk_rqstp;
	__be32 *p;
	int error;

	error = -EMSGSIZE;
	p = FUNC4(xdr, RPC_CALLHDRSIZE << 2);
	if (!p)
		goto out_fail;
	*p++ = req->rq_xid;
	*p++ = rpc_call;
	*p++ = FUNC0(RPC_VERSION);
	*p++ = FUNC0(clnt->cl_prog);
	*p++ = FUNC0(clnt->cl_vers);
	*p   = FUNC0(task->tk_msg.rpc_proc->p_proc);

	error = FUNC2(task, xdr);
	if (error < 0)
		goto out_fail;
	return 0;
out_fail:
	FUNC3(task);
	FUNC1(task, error);
	return error;
}