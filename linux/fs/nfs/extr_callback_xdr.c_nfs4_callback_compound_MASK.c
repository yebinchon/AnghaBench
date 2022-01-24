#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct TYPE_7__ {TYPE_2__* head; } ;
struct TYPE_8__ {TYPE_1__* head; } ;
struct svc_rqst {int /*<<< orphan*/  rq_resp; int /*<<< orphan*/  rq_argp; TYPE_3__ rq_res; TYPE_4__ rq_arg; } ;
struct cb_process_state {scalar_t__ minorversion; int /*<<< orphan*/ * clp; int /*<<< orphan*/  net; int /*<<< orphan*/  drc_status; } ;
struct cb_compound_hdr_res {scalar_t__* nops; scalar_t__* status; int /*<<< orphan*/  tag; int /*<<< orphan*/  taglen; int /*<<< orphan*/ * member_0; } ;
struct cb_compound_hdr_arg {scalar_t__ minorversion; unsigned int nops; int /*<<< orphan*/  tag; int /*<<< orphan*/  taglen; int /*<<< orphan*/  cb_ident; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_6__ {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_5__ {int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 unsigned int NFS4ERR_RESOURCE ; 
 unsigned int NFS4ERR_RESOURCE_HDR ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct svc_rqst*) ; 
 scalar_t__ FUNC2 (struct xdr_stream*,struct cb_compound_hdr_arg*) ; 
 scalar_t__ FUNC3 (struct xdr_stream*,struct cb_compound_hdr_res*) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct cb_process_state*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (unsigned int,struct svc_rqst*,struct xdr_stream*,int /*<<< orphan*/ ,struct xdr_stream*,int /*<<< orphan*/ ,struct cb_process_state*) ; 
 int /*<<< orphan*/  rpc_autherr_badcred ; 
 scalar_t__ rpc_garbage_args ; 
 scalar_t__ rpc_success ; 
 scalar_t__ rpc_system_err ; 
 scalar_t__ FUNC10 (struct svc_rqst*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct xdr_stream*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct xdr_stream*,TYPE_3__*,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32 FUNC14(struct svc_rqst *rqstp)
{
	struct cb_compound_hdr_arg hdr_arg = { 0 };
	struct cb_compound_hdr_res hdr_res = { NULL };
	struct xdr_stream xdr_in, xdr_out;
	__be32 *p, status;
	struct cb_process_state cps = {
		.drc_status = 0,
		.clp = NULL,
		.net = FUNC0(rqstp),
	};
	unsigned int nops = 0;

	FUNC12(&xdr_in, &rqstp->rq_arg,
			rqstp->rq_arg.head[0].iov_base, NULL);

	p = (__be32*)((char *)rqstp->rq_res.head[0].iov_base + rqstp->rq_res.head[0].iov_len);
	FUNC13(&xdr_out, &rqstp->rq_res, p, NULL);

	status = FUNC2(&xdr_in, &hdr_arg);
	if (status == FUNC4(NFS4ERR_RESOURCE))
		return rpc_garbage_args;

	if (hdr_arg.minorversion == 0) {
		cps.clp = FUNC6(FUNC0(rqstp), hdr_arg.cb_ident);
		if (!cps.clp || !FUNC1(cps.clp, rqstp)) {
			if (cps.clp)
				FUNC7(cps.clp);
			goto out_invalidcred;
		}
	}

	cps.minorversion = hdr_arg.minorversion;
	hdr_res.taglen = hdr_arg.taglen;
	hdr_res.tag = hdr_arg.tag;
	if (FUNC3(&xdr_out, &hdr_res) != 0) {
		if (cps.clp)
			FUNC7(cps.clp);
		return rpc_system_err;
	}
	while (status == 0 && nops != hdr_arg.nops) {
		status = FUNC9(nops, rqstp, &xdr_in,
				    rqstp->rq_argp, &xdr_out, rqstp->rq_resp,
				    &cps);
		nops++;
	}

	/* Buffer overflow in decode_ops_hdr or encode_ops_hdr. Return
	* resource error in cb_compound status without returning op */
	if (FUNC11(status == FUNC4(NFS4ERR_RESOURCE_HDR))) {
		status = FUNC4(NFS4ERR_RESOURCE);
		nops--;
	}

	*hdr_res.status = status;
	*hdr_res.nops = FUNC4(nops);
	FUNC5(&cps);
	FUNC7(cps.clp);
	return rpc_success;

out_invalidcred:
	FUNC8("NFS: NFSv4 callback contains invalid cred\n");
	return FUNC10(rqstp, rpc_autherr_badcred);
}