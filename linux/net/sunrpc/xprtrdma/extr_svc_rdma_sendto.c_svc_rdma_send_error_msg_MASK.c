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
struct svcxprt_rdma {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  opcode; } ;
struct svc_rdma_send_ctxt {TYPE_1__ sc_send_wr; int /*<<< orphan*/ * sc_xprt_buf; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WR_SEND ; 
 int /*<<< orphan*/  RPCRDMA_HDRLEN_ERR ; 
 int /*<<< orphan*/  err_chunk ; 
 int /*<<< orphan*/  rdma_error ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*,struct svc_rdma_send_ctxt*) ; 
 int FUNC1 (struct svcxprt_rdma*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct svcxprt_rdma*,struct svc_rdma_send_ctxt*) ; 
 int /*<<< orphan*/  FUNC3 (struct svcxprt_rdma*,struct svc_rdma_send_ctxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct svcxprt_rdma *rdma,
				   struct svc_rdma_send_ctxt *ctxt,
				   struct svc_rqst *rqstp)
{
	__be32 *p;
	int ret;

	p = ctxt->sc_xprt_buf;
	FUNC4(*p);
	p += 3;
	*p++ = rdma_error;
	*p   = err_chunk;
	FUNC3(rdma, ctxt, RPCRDMA_HDRLEN_ERR);

	FUNC0(rqstp, ctxt);

	ctxt->sc_send_wr.opcode = IB_WR_SEND;
	ret = FUNC1(rdma, &ctxt->sc_send_wr);
	if (ret) {
		FUNC2(rdma, ctxt);
		return ret;
	}

	return 0;
}