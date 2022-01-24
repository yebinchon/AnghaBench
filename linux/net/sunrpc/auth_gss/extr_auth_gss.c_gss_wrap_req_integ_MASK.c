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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct xdr_netobj {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct xdr_buf {scalar_t__ len; TYPE_1__* head; } ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {scalar_t__ rq_seqno; struct xdr_buf rq_snd_buf; } ;
struct rpc_cred {int /*<<< orphan*/  cr_flags; } ;
struct gss_cl_ctx {int /*<<< orphan*/  gc_gss_ctx; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ iov_base; } ;

/* Variables and functions */
 int EIO ; 
 int EMSGSIZE ; 
 scalar_t__ GSS_S_CONTEXT_EXPIRED ; 
 int /*<<< orphan*/  RPCAUTH_CRED_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct xdr_buf*,struct xdr_netobj*) ; 
 scalar_t__ FUNC3 (struct rpc_task*,struct xdr_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct xdr_buf*,struct xdr_buf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (struct xdr_stream*,int) ; 
 scalar_t__ FUNC7 (struct xdr_stream*,void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct rpc_cred *cred, struct gss_cl_ctx *ctx,
			      struct rpc_task *task, struct xdr_stream *xdr)
{
	struct rpc_rqst *rqstp = task->tk_rqstp;
	struct xdr_buf integ_buf, *snd_buf = &rqstp->rq_snd_buf;
	struct xdr_netobj mic;
	__be32 *p, *integ_len;
	u32 offset, maj_stat;

	p = FUNC6(xdr, 2 * sizeof(*p));
	if (!p)
		goto wrap_failed;
	integ_len = p++;
	*p = FUNC1(rqstp->rq_seqno);

	if (FUNC3(task, xdr))
		goto wrap_failed;

	offset = (u8 *)p - (u8 *)snd_buf->head[0].iov_base;
	if (FUNC5(snd_buf, &integ_buf,
				offset, snd_buf->len - offset))
		goto wrap_failed;
	*integ_len = FUNC1(integ_buf.len);

	p = FUNC6(xdr, 0);
	if (!p)
		goto wrap_failed;
	mic.data = (u8 *)(p + 1);
	maj_stat = FUNC2(ctx->gc_gss_ctx, &integ_buf, &mic);
	if (maj_stat == GSS_S_CONTEXT_EXPIRED)
		FUNC0(RPCAUTH_CRED_UPTODATE, &cred->cr_flags);
	else if (maj_stat)
		goto bad_mic;
	/* Check that the trailing MIC fit in the buffer, after the fact */
	if (FUNC7(xdr, (void **)&p, mic.len) < 0)
		goto wrap_failed;
	return 0;
wrap_failed:
	return -EMSGSIZE;
bad_mic:
	FUNC4(task, maj_stat);
	return -EIO;
}