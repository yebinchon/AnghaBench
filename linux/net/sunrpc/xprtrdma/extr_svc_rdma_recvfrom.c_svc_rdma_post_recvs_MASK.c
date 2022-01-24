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
struct svcxprt_rdma {unsigned int sc_max_requests; } ;
struct svc_rdma_recv_ctxt {int rc_temp; } ;

/* Variables and functions */
 int FUNC0 (struct svcxprt_rdma*,struct svc_rdma_recv_ctxt*) ; 
 struct svc_rdma_recv_ctxt* FUNC1 (struct svcxprt_rdma*) ; 

bool FUNC2(struct svcxprt_rdma *rdma)
{
	struct svc_rdma_recv_ctxt *ctxt;
	unsigned int i;
	int ret;

	for (i = 0; i < rdma->sc_max_requests; i++) {
		ctxt = FUNC1(rdma);
		if (!ctxt)
			return false;
		ctxt->rc_temp = true;
		ret = FUNC0(rdma, ctxt);
		if (ret)
			return false;
	}
	return true;
}