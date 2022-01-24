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
struct rds_ib_mr_pool {int max_free_pinned; int max_items; int /*<<< orphan*/  flush_worker; int /*<<< orphan*/  dirty_count; int /*<<< orphan*/  free_pinned; int /*<<< orphan*/  free_list; int /*<<< orphan*/  drop_list; } ;
struct rds_ib_mr {int /*<<< orphan*/  sg_len; int /*<<< orphan*/  llnode; struct rds_ib_mr_pool* pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rds_ib_mr_wq ; 

__attribute__((used)) static void FUNC5(struct rds_ib_mr *ibmr, bool drop)
{
	struct rds_ib_mr_pool *pool = ibmr->pool;

	if (drop)
		FUNC3(&ibmr->llnode, &pool->drop_list);
	else
		FUNC3(&ibmr->llnode, &pool->free_list);
	FUNC0(ibmr->sg_len, &pool->free_pinned);
	FUNC1(&pool->dirty_count);

	/* If we've pinned too many pages, request a flush */
	if (FUNC2(&pool->free_pinned) >= pool->max_free_pinned ||
	    FUNC2(&pool->dirty_count) >= pool->max_items / 5)
		FUNC4(rds_ib_mr_wq, &pool->flush_worker, 10);
}