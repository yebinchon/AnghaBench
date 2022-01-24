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
struct svcxprt_rdma {int /*<<< orphan*/  sc_xprt; int /*<<< orphan*/  sc_port_num; int /*<<< orphan*/  sc_qp; } ;
struct TYPE_2__ {int /*<<< orphan*/  sgl; } ;
struct svc_rdma_rw_ctxt {int /*<<< orphan*/  rw_nents; TYPE_1__ rw_sg_table; int /*<<< orphan*/  rw_ctx; int /*<<< orphan*/  rw_list; } ;
struct svc_rdma_chunk_ctxt {int /*<<< orphan*/  cc_rwctxts; struct svcxprt_rdma* cc_rdma; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct svc_rdma_rw_ctxt* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct svcxprt_rdma*,struct svc_rdma_rw_ctxt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct svc_rdma_chunk_ctxt *cc,
				enum dma_data_direction dir)
{
	struct svcxprt_rdma *rdma = cc->cc_rdma;
	struct svc_rdma_rw_ctxt *ctxt;

	while ((ctxt = FUNC2(&cc->cc_rwctxts)) != NULL) {
		FUNC0(&ctxt->rw_list);

		FUNC1(&ctxt->rw_ctx, rdma->sc_qp,
				    rdma->sc_port_num, ctxt->rw_sg_table.sgl,
				    ctxt->rw_nents, dir);
		FUNC3(rdma, ctxt);
	}
	FUNC4(&rdma->sc_xprt);
}