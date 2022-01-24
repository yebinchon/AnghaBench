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
struct rds_ib_mr_pool {int max_free_pinned; int max_items; int /*<<< orphan*/  flush_worker; int /*<<< orphan*/  dirty_count; int /*<<< orphan*/  free_pinned; } ;
struct rds_ib_mr {int /*<<< orphan*/  sg_len; struct rds_ib_device* device; struct rds_ib_mr_pool* pool; } ;
struct rds_ib_device {scalar_t__ use_fastreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_ib_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct rds_ib_mr_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rds_ib_mr*) ; 
 int /*<<< orphan*/  FUNC9 (struct rds_ib_mr*) ; 
 int /*<<< orphan*/  rds_ib_mr_wq ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

void FUNC11(void *trans_private, int invalidate)
{
	struct rds_ib_mr *ibmr = trans_private;
	struct rds_ib_mr_pool *pool = ibmr->pool;
	struct rds_ib_device *rds_ibdev = ibmr->device;

	FUNC10("RDS/IB: free_mr nents %u\n", ibmr->sg_len);

	/* Return it to the pool's free list */
	if (rds_ibdev->use_fastreg)
		FUNC9(ibmr);
	else
		FUNC8(ibmr);

	FUNC0(ibmr->sg_len, &pool->free_pinned);
	FUNC1(&pool->dirty_count);

	/* If we've pinned too many pages, request a flush */
	if (FUNC2(&pool->free_pinned) >= pool->max_free_pinned ||
	    FUNC2(&pool->dirty_count) >= pool->max_items / 5)
		FUNC5(rds_ib_mr_wq, &pool->flush_worker, 10);

	if (invalidate) {
		if (FUNC4(!FUNC3())) {
			FUNC7(pool, 0, NULL);
		} else {
			/* We get here if the user created a MR marked
			 * as use_once and invalidate at the same time.
			 */
			FUNC5(rds_ib_mr_wq,
					   &pool->flush_worker, 10);
		}
	}

	FUNC6(rds_ibdev);
}