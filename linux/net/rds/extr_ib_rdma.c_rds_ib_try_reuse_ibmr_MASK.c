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
struct rds_ib_mr_pool {scalar_t__ max_items; scalar_t__ pool_type; int /*<<< orphan*/  item_count; } ;
struct rds_ib_mr {int dummy; } ;

/* Variables and functions */
 scalar_t__ RDS_IB_MR_8K_POOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_ib_mr_pool*,int /*<<< orphan*/ ,struct rds_ib_mr**) ; 
 struct rds_ib_mr* FUNC3 (struct rds_ib_mr_pool*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_ib_rdma_mr_1m_pool_depleted ; 
 int /*<<< orphan*/  s_ib_rdma_mr_1m_pool_wait ; 
 int /*<<< orphan*/  s_ib_rdma_mr_8k_pool_depleted ; 
 int /*<<< orphan*/  s_ib_rdma_mr_8k_pool_wait ; 

struct rds_ib_mr *FUNC5(struct rds_ib_mr_pool *pool)
{
	struct rds_ib_mr *ibmr = NULL;
	int iter = 0;

	while (1) {
		ibmr = FUNC3(pool);
		if (ibmr)
			return ibmr;

		if (FUNC1(&pool->item_count) <= pool->max_items)
			break;

		FUNC0(&pool->item_count);

		if (++iter > 2) {
			if (pool->pool_type == RDS_IB_MR_8K_POOL)
				FUNC4(s_ib_rdma_mr_8k_pool_depleted);
			else
				FUNC4(s_ib_rdma_mr_1m_pool_depleted);
			break;
		}

		/* We do have some empty MRs. Flush them out. */
		if (pool->pool_type == RDS_IB_MR_8K_POOL)
			FUNC4(s_ib_rdma_mr_8k_pool_wait);
		else
			FUNC4(s_ib_rdma_mr_1m_pool_wait);

		FUNC2(pool, 0, &ibmr);
		if (ibmr)
			return ibmr;
	}

	return NULL;
}