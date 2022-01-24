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
struct rds_ib_mr_pool {int /*<<< orphan*/  free_pinned; int /*<<< orphan*/  item_count; int /*<<< orphan*/  flush_worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_ib_mr_pool*) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_ib_mr_pool*,int,int /*<<< orphan*/ *) ; 

void FUNC5(struct rds_ib_mr_pool *pool)
{
	FUNC2(&pool->flush_worker);
	FUNC4(pool, 1, NULL);
	FUNC0(FUNC1(&pool->item_count));
	FUNC0(FUNC1(&pool->free_pinned));
	FUNC3(pool);
}