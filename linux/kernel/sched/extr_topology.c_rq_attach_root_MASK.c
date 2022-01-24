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
struct rq {int /*<<< orphan*/  lock; int /*<<< orphan*/  cpu; struct root_domain* rd; } ;
struct root_domain {int /*<<< orphan*/  rcu; int /*<<< orphan*/  span; int /*<<< orphan*/  refcount; int /*<<< orphan*/  online; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_active_mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_rootdomain ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct rq*) ; 

void FUNC10(struct rq *rq, struct root_domain *rd)
{
	struct root_domain *old_rd = NULL;
	unsigned long flags;

	FUNC6(&rq->lock, flags);

	if (rq->rd) {
		old_rd = rq->rd;

		if (FUNC5(rq->cpu, old_rd->online))
			FUNC8(rq);

		FUNC3(rq->cpu, old_rd->span);

		/*
		 * If we dont want to free the old_rd yet then
		 * set old_rd to NULL to skip the freeing later
		 * in this function:
		 */
		if (!FUNC0(&old_rd->refcount))
			old_rd = NULL;
	}

	FUNC1(&rd->refcount);
	rq->rd = rd;

	FUNC4(rq->cpu, rd->span);
	if (FUNC5(rq->cpu, cpu_active_mask))
		FUNC9(rq);

	FUNC7(&rq->lock, flags);

	if (old_rd)
		FUNC2(&old_rd->rcu, free_rootdomain);
}