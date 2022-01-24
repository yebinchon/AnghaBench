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
struct svcxprt_rdma {int /*<<< orphan*/  sc_xprt; int /*<<< orphan*/  sc_qp; } ;
struct svc_rdma_recv_ctxt {int /*<<< orphan*/  rc_recv_wr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct svcxprt_rdma*,struct svc_rdma_recv_ctxt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct svcxprt_rdma *rdma,
				struct svc_rdma_recv_ctxt *ctxt)
{
	int ret;

	FUNC2(&rdma->sc_xprt);
	ret = FUNC0(rdma->sc_qp, &ctxt->rc_recv_wr, NULL);
	FUNC4(&ctxt->rc_recv_wr, ret);
	if (ret)
		goto err_post;
	return 0;

err_post:
	FUNC1(rdma, ctxt);
	FUNC3(&rdma->sc_xprt);
	return ret;
}