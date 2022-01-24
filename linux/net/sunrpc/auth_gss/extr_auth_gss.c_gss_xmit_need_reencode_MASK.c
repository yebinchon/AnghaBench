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
typedef  scalar_t__ u32 ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_seqno; struct rpc_cred* rq_cred; } ;
struct rpc_cred {int dummy; } ;
struct gss_cl_ctx {scalar_t__ gc_win; int /*<<< orphan*/  gc_seq_xmit; int /*<<< orphan*/  gc_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 struct gss_cl_ctx* FUNC2 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC3 (struct gss_cl_ctx*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*,scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC6(struct rpc_task *task)
{
	struct rpc_rqst *req = task->tk_rqstp;
	struct rpc_cred *cred = req->rq_cred;
	struct gss_cl_ctx *ctx = FUNC2(cred);
	u32 win, seq_xmit = 0;
	bool ret = true;

	if (!ctx)
		goto out;

	if (FUNC4(req->rq_seqno, FUNC0(ctx->gc_seq)))
		goto out_ctx;

	seq_xmit = FUNC0(ctx->gc_seq_xmit);
	while (FUNC4(req->rq_seqno, seq_xmit)) {
		u32 tmp = seq_xmit;

		seq_xmit = FUNC1(&ctx->gc_seq_xmit, tmp, req->rq_seqno);
		if (seq_xmit == tmp) {
			ret = false;
			goto out_ctx;
		}
	}

	win = ctx->gc_win;
	if (win > 0)
		ret = !FUNC4(req->rq_seqno, seq_xmit - win);

out_ctx:
	FUNC3(ctx);
out:
	FUNC5(task, seq_xmit, ret);
	return ret;
}