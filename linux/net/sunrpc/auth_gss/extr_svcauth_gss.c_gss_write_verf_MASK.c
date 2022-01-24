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
struct xdr_netobj {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct xdr_buf {int dummy; } ;
struct TYPE_3__ {TYPE_2__* head; } ;
struct svc_rqst {TYPE_1__ rq_res; } ;
struct kvec {int iov_len; void** iov_base; } ;
struct gss_ctx {int dummy; } ;
typedef  void* __be32 ;
struct TYPE_4__ {int iov_len; void** iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  RPC_AUTH_GSS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct gss_ctx*,struct xdr_buf*,struct xdr_netobj*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 void** FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvec*,struct xdr_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_rqst*,void**) ; 

__attribute__((used)) static int
FUNC10(struct svc_rqst *rqstp, struct gss_ctx *ctx_id, u32 seq)
{
	__be32			*xdr_seq;
	u32			maj_stat;
	struct xdr_buf		verf_data;
	struct xdr_netobj	mic;
	__be32			*p;
	struct kvec		iov;
	int err = -1;

	FUNC7(rqstp->rq_res.head, RPC_AUTH_GSS);
	xdr_seq = FUNC4(4, GFP_KERNEL);
	if (!xdr_seq)
		return -1;
	*xdr_seq = FUNC2(seq);

	iov.iov_base = xdr_seq;
	iov.iov_len = 4;
	FUNC8(&iov, &verf_data);
	p = rqstp->rq_res.head->iov_base + rqstp->rq_res.head->iov_len;
	mic.data = (u8 *)(p + 1);
	maj_stat = FUNC1(ctx_id, &verf_data, &mic);
	if (maj_stat != GSS_S_COMPLETE)
		goto out;
	*p++ = FUNC2(mic.len);
	FUNC5((u8 *)p + mic.len, 0, FUNC6(mic.len) - mic.len);
	p += FUNC0(mic.len);
	if (!FUNC9(rqstp, p))
		goto out;
	err = 0;
out:
	FUNC3(xdr_seq);
	return err;
}