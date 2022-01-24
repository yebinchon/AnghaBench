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
struct svcxprt_rdma {int dummy; } ;
struct svc_rdma_recv_ctxt {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct svcxprt_rdma*,struct svc_rdma_recv_ctxt*) ; 
 struct svc_rdma_recv_ctxt* FUNC1 (struct svcxprt_rdma*) ; 

__attribute__((used)) static int FUNC2(struct svcxprt_rdma *rdma)
{
	struct svc_rdma_recv_ctxt *ctxt;

	ctxt = FUNC1(rdma);
	if (!ctxt)
		return -ENOMEM;
	return FUNC0(rdma, ctxt);
}