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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct xdr_netobj {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct xdr_buf {int dummy; } ;
struct rpc_task {TYPE_1__* tk_rqstp; } ;
struct rpc_cred {TYPE_2__* cr_auth; int /*<<< orphan*/  cr_flags; } ;
struct kvec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
struct gss_cl_ctx {int /*<<< orphan*/  gc_gss_ctx; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {scalar_t__ au_verfsize; } ;
struct TYPE_3__ {int /*<<< orphan*/  rq_seqno; struct rpc_cred* rq_cred; } ;

/* Variables and functions */
 int EACCES ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ GSS_S_CONTEXT_EXPIRED ; 
 int /*<<< orphan*/  RPCAUTH_CRED_UPTODATE ; 
 scalar_t__ RPC_MAX_AUTH_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct gss_cl_ctx* FUNC4 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC5 (struct gss_cl_ctx*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct xdr_buf*,struct xdr_netobj*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ rpc_auth_gss ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_task*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct kvec*,struct xdr_buf*) ; 
 int /*<<< orphan*/ * FUNC11 (struct xdr_stream*,scalar_t__) ; 

__attribute__((used)) static int
FUNC12(struct rpc_task *task, struct xdr_stream *xdr)
{
	struct rpc_cred *cred = task->tk_rqstp->rq_cred;
	struct gss_cl_ctx *ctx = FUNC4(cred);
	__be32		*p, *seq = NULL;
	struct kvec	iov;
	struct xdr_buf	verf_buf;
	struct xdr_netobj mic;
	u32		len, maj_stat;
	int		status;

	p = FUNC11(xdr, 2 * sizeof(*p));
	if (!p)
		goto validate_failed;
	if (*p++ != rpc_auth_gss)
		goto validate_failed;
	len = FUNC1(p);
	if (len > RPC_MAX_AUTH_SIZE)
		goto validate_failed;
	p = FUNC11(xdr, len);
	if (!p)
		goto validate_failed;

	seq = FUNC8(4, GFP_NOFS);
	if (!seq)
		goto validate_failed;
	*seq = FUNC3(task->tk_rqstp->rq_seqno);
	iov.iov_base = seq;
	iov.iov_len = 4;
	FUNC10(&iov, &verf_buf);
	mic.data = (u8 *)p;
	mic.len = len;
	maj_stat = FUNC6(ctx->gc_gss_ctx, &verf_buf, &mic);
	if (maj_stat == GSS_S_CONTEXT_EXPIRED)
		FUNC2(RPCAUTH_CRED_UPTODATE, &cred->cr_flags);
	if (maj_stat)
		goto bad_mic;

	/* We leave it to unwrap to calculate au_rslack. For now we just
	 * calculate the length of the verifier: */
	cred->cr_auth->au_verfsize = FUNC0(len) + 2;
	status = 0;
out:
	FUNC5(ctx);
	FUNC7(seq);
	return status;

validate_failed:
	status = -EIO;
	goto out;
bad_mic:
	FUNC9(task, maj_stat);
	status = -EACCES;
	goto out;
}