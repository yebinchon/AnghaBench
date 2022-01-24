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
struct scatterlist {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fr_linv_done; struct ib_mr* fr_mr; } ;
struct rpcrdma_mr {struct scatterlist* mr_sg; TYPE_1__ frwr; int /*<<< orphan*/  mr_recycle; int /*<<< orphan*/  mr_list; int /*<<< orphan*/  mr_dir; } ;
struct rpcrdma_ia {unsigned int ri_max_frwr_depth; int /*<<< orphan*/  ri_mrtype; int /*<<< orphan*/  ri_pd; } ;
struct ib_mr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ib_mr*) ; 
 int FUNC3 (struct ib_mr*) ; 
 int /*<<< orphan*/  frwr_mr_recycle_worker ; 
 struct ib_mr* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_mr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct scatterlist* FUNC7 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct rpcrdma_mr*,int) ; 

int FUNC10(struct rpcrdma_ia *ia, struct rpcrdma_mr *mr)
{
	unsigned int depth = ia->ri_max_frwr_depth;
	struct scatterlist *sg;
	struct ib_mr *frmr;
	int rc;

	/* NB: ib_alloc_mr and device drivers typically allocate
	 *     memory with GFP_KERNEL.
	 */
	frmr = FUNC4(ia->ri_pd, ia->ri_mrtype, depth);
	if (FUNC2(frmr))
		goto out_mr_err;

	sg = FUNC7(depth, sizeof(*sg), GFP_NOFS);
	if (!sg)
		goto out_list_err;

	mr->frwr.fr_mr = frmr;
	mr->mr_dir = DMA_NONE;
	FUNC0(&mr->mr_list);
	FUNC1(&mr->mr_recycle, frwr_mr_recycle_worker);
	FUNC6(&mr->frwr.fr_linv_done);

	FUNC8(sg, depth);
	mr->mr_sg = sg;
	return 0;

out_mr_err:
	rc = FUNC3(frmr);
	FUNC9(mr, rc);
	return rc;

out_list_err:
	FUNC5(frmr);
	return -ENOMEM;
}