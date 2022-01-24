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
struct xdr_netobj {int len; int /*<<< orphan*/ * data; } ;
struct xdr_buf {int len; struct kvec* tail; TYPE_1__* head; } ;
struct svc_rqst {struct xdr_buf rq_res; scalar_t__ rq_auth_data; } ;
struct rpc_gss_wire_cred {int gc_seq; } ;
struct kvec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
struct gss_svc_data {TYPE_2__* rsci; struct rpc_gss_wire_cred clcred; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  mechctx; } ;
struct TYPE_3__ {scalar_t__ iov_len; int /*<<< orphan*/ * iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ RPC_MAX_AUTH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct xdr_buf*,struct xdr_netobj*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct kvec*,int) ; 
 int /*<<< orphan*/ * FUNC8 (struct xdr_buf*,struct gss_svc_data*) ; 
 scalar_t__ FUNC9 (struct xdr_buf*,struct xdr_buf*,int,int) ; 

__attribute__((used)) static inline int
FUNC10(struct svc_rqst *rqstp)
{
	struct gss_svc_data *gsd = (struct gss_svc_data *)rqstp->rq_auth_data;
	struct rpc_gss_wire_cred *gc = &gsd->clcred;
	struct xdr_buf *resbuf = &rqstp->rq_res;
	struct xdr_buf integ_buf;
	struct xdr_netobj mic;
	struct kvec *resv;
	__be32 *p;
	int integ_offset, integ_len;
	int stat = -EINVAL;

	p = FUNC8(resbuf, gsd);
	if (p == NULL)
		goto out;
	integ_offset = (u8 *)(p + 1) - (u8 *)resbuf->head[0].iov_base;
	integ_len = resbuf->len - integ_offset;
	FUNC0(integ_len % 4);
	*p++ = FUNC4(integ_len);
	*p++ = FUNC4(gc->gc_seq);
	if (FUNC9(resbuf, &integ_buf, integ_offset, integ_len)) {
		FUNC1(1);
		goto out_err;
	}
	if (resbuf->tail[0].iov_base == NULL) {
		if (resbuf->head[0].iov_len + RPC_MAX_AUTH_SIZE > PAGE_SIZE)
			goto out_err;
		resbuf->tail[0].iov_base = resbuf->head[0].iov_base
						+ resbuf->head[0].iov_len;
		resbuf->tail[0].iov_len = 0;
	}
	resv = &resbuf->tail[0];
	mic.data = (u8 *)resv->iov_base + resv->iov_len + 4;
	if (FUNC3(gsd->rsci->mechctx, &integ_buf, &mic))
		goto out_err;
	FUNC7(resv, mic.len);
	FUNC5(mic.data + mic.len, 0,
			FUNC6(mic.len) - mic.len);
	resv->iov_len += FUNC2(mic.len) << 2;
	/* not strictly required: */
	resbuf->len += FUNC2(mic.len) << 2;
	FUNC0(resv->iov_len > PAGE_SIZE);
out:
	stat = 0;
out_err:
	return stat;
}