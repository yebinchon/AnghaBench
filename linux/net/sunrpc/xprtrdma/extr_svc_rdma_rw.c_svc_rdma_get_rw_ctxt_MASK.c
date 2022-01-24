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
struct svcxprt_rdma {int /*<<< orphan*/  sc_rw_ctxt_lock; int /*<<< orphan*/  sc_rw_ctxts; } ;
struct TYPE_2__ {int /*<<< orphan*/  sgl; } ;
struct svc_rdma_rw_ctxt {TYPE_1__ rw_sg_table; int /*<<< orphan*/  rw_first_sgl; int /*<<< orphan*/  rw_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SG_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rdma_rw_ctxt*) ; 
 struct svc_rdma_rw_ctxt* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rw_first_sgl ; 
 scalar_t__ FUNC4 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct svc_rdma_rw_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct svc_rdma_rw_ctxt* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct svc_rdma_rw_ctxt *
FUNC9(struct svcxprt_rdma *rdma, unsigned int sges)
{
	struct svc_rdma_rw_ctxt *ctxt;

	FUNC5(&rdma->sc_rw_ctxt_lock);

	ctxt = FUNC8(&rdma->sc_rw_ctxts);
	if (ctxt) {
		FUNC3(&ctxt->rw_list);
		FUNC6(&rdma->sc_rw_ctxt_lock);
	} else {
		FUNC6(&rdma->sc_rw_ctxt_lock);
		ctxt = FUNC2(FUNC7(ctxt, rw_first_sgl, SG_CHUNK_SIZE),
			       GFP_KERNEL);
		if (!ctxt)
			goto out;
		FUNC0(&ctxt->rw_list);
	}

	ctxt->rw_sg_table.sgl = ctxt->rw_first_sgl;
	if (FUNC4(&ctxt->rw_sg_table, sges,
				   ctxt->rw_sg_table.sgl,
				   SG_CHUNK_SIZE)) {
		FUNC1(ctxt);
		ctxt = NULL;
	}
out:
	return ctxt;
}