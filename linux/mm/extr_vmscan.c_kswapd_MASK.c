#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int flags; } ;
struct cpumask {int dummy; } ;
struct TYPE_5__ {unsigned int kswapd_order; int kswapd_classzone_idx; int /*<<< orphan*/  node_id; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int MAX_NR_ZONES ; 
 int PF_KSWAPD ; 
 int PF_MEMALLOC ; 
 int PF_SWAPWRITE ; 
 unsigned int FUNC0 (TYPE_1__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask const*) ; 
 struct cpumask* FUNC2 (int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 unsigned int FUNC3 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FUNC9 () ; 

__attribute__((used)) static int FUNC10(void *p)
{
	unsigned int alloc_order, reclaim_order;
	unsigned int classzone_idx = MAX_NR_ZONES - 1;
	pg_data_t *pgdat = (pg_data_t*)p;
	struct task_struct *tsk = current;
	const struct cpumask *cpumask = FUNC2(pgdat->node_id);

	if (!FUNC1(cpumask))
		FUNC6(tsk, cpumask);

	/*
	 * Tell the memory management that we're a "memory allocator",
	 * and that if we need more memory we should get access to it
	 * regardless (see "__alloc_pages()"). "kswapd" should
	 * never get caught in the normal page freeing logic.
	 *
	 * (Kswapd normally doesn't need memory anyway, but sometimes
	 * you need a small amount of memory in order to be able to
	 * page out something else, and this flag essentially protects
	 * us from recursively trying to free more memory as we're
	 * trying to free the first piece of memory in the first place).
	 */
	tsk->flags |= PF_MEMALLOC | PF_SWAPWRITE | PF_KSWAPD;
	FUNC7();

	pgdat->kswapd_order = 0;
	pgdat->kswapd_classzone_idx = MAX_NR_ZONES;
	for ( ; ; ) {
		bool ret;

		alloc_order = reclaim_order = pgdat->kswapd_order;
		classzone_idx = FUNC3(pgdat, classzone_idx);

kswapd_try_sleep:
		FUNC4(pgdat, alloc_order, reclaim_order,
					classzone_idx);

		/* Read the new order and classzone_idx */
		alloc_order = reclaim_order = pgdat->kswapd_order;
		classzone_idx = FUNC3(pgdat, classzone_idx);
		pgdat->kswapd_order = 0;
		pgdat->kswapd_classzone_idx = MAX_NR_ZONES;

		ret = FUNC9();
		if (FUNC5())
			break;

		/*
		 * We can speed up thawing tasks if we don't call balance_pgdat
		 * after returning from the refrigerator
		 */
		if (ret)
			continue;

		/*
		 * Reclaim begins at the requested order but if a high-order
		 * reclaim fails then kswapd falls back to reclaiming for
		 * order-0. If that happens, kswapd will consider sleeping
		 * for the order it finished reclaiming at (reclaim_order)
		 * but kcompactd is woken to compact for the original
		 * request (alloc_order).
		 */
		FUNC8(pgdat->node_id, classzone_idx,
						alloc_order);
		reclaim_order = FUNC0(pgdat, alloc_order, classzone_idx);
		if (reclaim_order < alloc_order)
			goto kswapd_try_sleep;
	}

	tsk->flags &= ~(PF_MEMALLOC | PF_SWAPWRITE | PF_KSWAPD);

	return 0;
}