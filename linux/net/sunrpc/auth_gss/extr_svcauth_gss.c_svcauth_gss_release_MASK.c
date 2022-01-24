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
struct xdr_buf {int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int /*<<< orphan*/ * cr_group_info; } ;
struct svc_rqst {TYPE_1__ rq_cred; int /*<<< orphan*/ * rq_gssclient; int /*<<< orphan*/ * rq_client; struct xdr_buf rq_res; scalar_t__ rq_auth_data; } ;
struct sunrpc_net {int /*<<< orphan*/  rsc_cache; } ;
struct rpc_gss_wire_cred {scalar_t__ gc_proc; int gc_svc; } ;
struct gss_svc_data {TYPE_2__* rsci; int /*<<< orphan*/ * verf_start; struct rpc_gss_wire_cred clcred; } ;
struct TYPE_4__ {int /*<<< orphan*/  h; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ RPC_GSS_PROC_DATA ; 
#define  RPC_GSS_SVC_INTEGRITY 130 
#define  RPC_GSS_SVC_NONE 129 
#define  RPC_GSS_SVC_PRIVACY 128 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sunrpc_net* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 
 int FUNC5 (struct svc_rqst*) ; 
 int FUNC6 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC7 (struct xdr_buf*) ; 

__attribute__((used)) static int
FUNC8(struct svc_rqst *rqstp)
{
	struct gss_svc_data *gsd = (struct gss_svc_data *)rqstp->rq_auth_data;
	struct rpc_gss_wire_cred *gc = &gsd->clcred;
	struct xdr_buf *resbuf = &rqstp->rq_res;
	int stat = -EINVAL;
	struct sunrpc_net *sn = FUNC3(FUNC0(rqstp), sunrpc_net_id);

	if (gc->gc_proc != RPC_GSS_PROC_DATA)
		goto out;
	/* Release can be called twice, but we only wrap once. */
	if (gsd->verf_start == NULL)
		goto out;
	/* normally not set till svc_send, but we need it here: */
	/* XXX: what for?  Do we mess it up the moment we call svc_putu32
	 * or whatever? */
	resbuf->len = FUNC7(resbuf);
	switch (gc->gc_svc) {
	case RPC_GSS_SVC_NONE:
		break;
	case RPC_GSS_SVC_INTEGRITY:
		stat = FUNC5(rqstp);
		if (stat)
			goto out_err;
		break;
	case RPC_GSS_SVC_PRIVACY:
		stat = FUNC6(rqstp);
		if (stat)
			goto out_err;
		break;
	/*
	 * For any other gc_svc value, svcauth_gss_accept() already set
	 * the auth_error appropriately; just fall through:
	 */
	}

out:
	stat = 0;
out_err:
	if (rqstp->rq_client)
		FUNC1(rqstp->rq_client);
	rqstp->rq_client = NULL;
	if (rqstp->rq_gssclient)
		FUNC1(rqstp->rq_gssclient);
	rqstp->rq_gssclient = NULL;
	if (rqstp->rq_cred.cr_group_info)
		FUNC4(rqstp->rq_cred.cr_group_info);
	rqstp->rq_cred.cr_group_info = NULL;
	if (gsd->rsci)
		FUNC2(&gsd->rsci->h, sn->rsc_cache);
	gsd->rsci = NULL;

	return stat;
}