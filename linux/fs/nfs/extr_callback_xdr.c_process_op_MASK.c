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
struct xdr_stream {long end; long p; } ;
struct svc_rqst {int dummy; } ;
struct cb_process_state {int minorversion; scalar_t__ drc_status; } ;
struct callback_op {scalar_t__ (* decode_args ) (struct svc_rqst*,struct xdr_stream*,void*) ;scalar_t__ (* process_op ) (void*,void*,struct cb_process_state*) ;scalar_t__ (* encode_res ) (struct svc_rqst*,struct xdr_stream*,void*) ;} ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4ERR_MINOR_VERS_MISMATCH ; 
 int /*<<< orphan*/  NFS4ERR_OP_ILLEGAL ; 
 int /*<<< orphan*/  NFS4ERR_RESOURCE ; 
 unsigned int OP_CB_ILLEGAL ; 
 long PAGE_SIZE ; 
 struct callback_op* callback_ops ; 
 scalar_t__ FUNC0 (struct xdr_stream*,unsigned int*) ; 
 scalar_t__ FUNC1 (struct xdr_stream*,unsigned int,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,unsigned int,struct callback_op**) ; 
 scalar_t__ FUNC5 (int,unsigned int,struct callback_op**) ; 
 scalar_t__ FUNC6 (unsigned int,struct callback_op**) ; 
 scalar_t__ FUNC7 (struct svc_rqst*,struct xdr_stream*,void*) ; 
 scalar_t__ FUNC8 (void*,void*,struct cb_process_state*) ; 
 scalar_t__ FUNC9 (struct svc_rqst*,struct xdr_stream*,void*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static __be32 FUNC11(int nop, struct svc_rqst *rqstp,
		struct xdr_stream *xdr_in, void *argp,
		struct xdr_stream *xdr_out, void *resp,
		struct cb_process_state *cps)
{
	struct callback_op *op = &callback_ops[0];
	unsigned int op_nr;
	__be32 status;
	long maxlen;
	__be32 res;

	status = FUNC0(xdr_in, &op_nr);
	if (FUNC10(status))
		return status;

	switch (cps->minorversion) {
	case 0:
		status = FUNC6(op_nr, &op);
		break;
	case 1:
		status = FUNC4(nop, op_nr, &op);
		break;
	case 2:
		status = FUNC5(nop, op_nr, &op);
		break;
	default:
		status = FUNC2(NFS4ERR_MINOR_VERS_MISMATCH);
	}

	if (status == FUNC2(NFS4ERR_OP_ILLEGAL))
		op_nr = OP_CB_ILLEGAL;
	if (status)
		goto encode_hdr;

	if (cps->drc_status) {
		status = cps->drc_status;
		goto encode_hdr;
	}

	maxlen = xdr_out->end - xdr_out->p;
	if (maxlen > 0 && maxlen < PAGE_SIZE) {
		status = op->decode_args(rqstp, xdr_in, argp);
		if (FUNC3(status == 0))
			status = op->process_op(argp, resp, cps);
	} else
		status = FUNC2(NFS4ERR_RESOURCE);

encode_hdr:
	res = FUNC1(xdr_out, op_nr, status);
	if (FUNC10(res))
		return res;
	if (op->encode_res != NULL && status == 0)
		status = op->encode_res(rqstp, xdr_out, resp);
	return status;
}