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
struct TYPE_2__ {int max_pages; int /*<<< orphan*/  page_shift; int /*<<< orphan*/  max_maps; } ;
struct rds_ib_mr_pool {int pool_type; int max_items; int max_free_pinned; int max_items_soft; int /*<<< orphan*/  use_fastreg; TYPE_1__ fmr_attr; int /*<<< orphan*/  flush_worker; int /*<<< orphan*/  flush_wait; int /*<<< orphan*/  flush_lock; int /*<<< orphan*/  clean_lock; int /*<<< orphan*/  clean_list; int /*<<< orphan*/  drop_list; int /*<<< orphan*/  free_list; } ;
struct rds_ib_device {int max_1m_mrs; int max_8k_mrs; int max_mrs; int /*<<< orphan*/  use_fastreg; int /*<<< orphan*/  fmr_max_remaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rds_ib_mr_pool* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int RDS_IB_MR_1M_POOL ; 
 int RDS_MR_1M_MSG_SIZE ; 
 int RDS_MR_8K_MSG_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rds_ib_mr_pool* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_ib_mr_pool_flush_worker ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct rds_ib_mr_pool *FUNC7(struct rds_ib_device *rds_ibdev,
					     int pool_type)
{
	struct rds_ib_mr_pool *pool;

	pool = FUNC4(sizeof(*pool), GFP_KERNEL);
	if (!pool)
		return FUNC0(-ENOMEM);

	pool->pool_type = pool_type;
	FUNC2(&pool->free_list);
	FUNC2(&pool->drop_list);
	FUNC2(&pool->clean_list);
	FUNC6(&pool->clean_lock);
	FUNC5(&pool->flush_lock);
	FUNC3(&pool->flush_wait);
	FUNC1(&pool->flush_worker, rds_ib_mr_pool_flush_worker);

	if (pool_type == RDS_IB_MR_1M_POOL) {
		/* +1 allows for unaligned MRs */
		pool->fmr_attr.max_pages = RDS_MR_1M_MSG_SIZE + 1;
		pool->max_items = rds_ibdev->max_1m_mrs;
	} else {
		/* pool_type == RDS_IB_MR_8K_POOL */
		pool->fmr_attr.max_pages = RDS_MR_8K_MSG_SIZE + 1;
		pool->max_items = rds_ibdev->max_8k_mrs;
	}

	pool->max_free_pinned = pool->max_items * pool->fmr_attr.max_pages / 4;
	pool->fmr_attr.max_maps = rds_ibdev->fmr_max_remaps;
	pool->fmr_attr.page_shift = PAGE_SHIFT;
	pool->max_items_soft = rds_ibdev->max_mrs * 3 / 4;
	pool->use_fastreg = rds_ibdev->use_fastreg;

	return pool;
}