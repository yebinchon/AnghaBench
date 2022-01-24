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
struct worker_pool {int /*<<< orphan*/  lock; } ;
struct work_struct {int dummy; } ;

/* Variables and functions */
 unsigned int WORK_BUSY_PENDING ; 
 unsigned int WORK_BUSY_RUNNING ; 
 scalar_t__ FUNC0 (struct worker_pool*,struct work_struct*) ; 
 struct worker_pool* FUNC1 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct work_struct*) ; 

unsigned int FUNC7(struct work_struct *work)
{
	struct worker_pool *pool;
	unsigned long flags;
	unsigned int ret = 0;

	if (FUNC6(work))
		ret |= WORK_BUSY_PENDING;

	FUNC2();
	pool = FUNC1(work);
	if (pool) {
		FUNC4(&pool->lock, flags);
		if (FUNC0(pool, work))
			ret |= WORK_BUSY_RUNNING;
		FUNC5(&pool->lock, flags);
	}
	FUNC3();

	return ret;
}