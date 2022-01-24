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
struct gen_pool {int min_alloc_order; int /*<<< orphan*/ * name; int /*<<< orphan*/ * data; int /*<<< orphan*/  algo; int /*<<< orphan*/  chunks; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gen_pool_first_fit ; 
 struct gen_pool* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct gen_pool *FUNC3(int min_alloc_order, int nid)
{
	struct gen_pool *pool;

	pool = FUNC1(sizeof(struct gen_pool), GFP_KERNEL, nid);
	if (pool != NULL) {
		FUNC2(&pool->lock);
		FUNC0(&pool->chunks);
		pool->min_alloc_order = min_alloc_order;
		pool->algo = gen_pool_first_fit;
		pool->data = NULL;
		pool->name = NULL;
	}
	return pool;
}