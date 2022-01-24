#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  kswapd_wait; int /*<<< orphan*/  node_id; int /*<<< orphan*/  kswapd_order; int /*<<< orphan*/  kswapd_classzone_idx; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  KSWAPD_HIGH_WMARK_HIT_QUICKLY ; 
 int /*<<< orphan*/  KSWAPD_LOW_WMARK_HIT_QUICKLY ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  calculate_normal_threshold ; 
 int /*<<< orphan*/  calculate_pressure_threshold ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 long FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,unsigned int) ; 

__attribute__((used)) static void FUNC15(pg_data_t *pgdat, int alloc_order, int reclaim_order,
				unsigned int classzone_idx)
{
	long remaining = 0;
	FUNC0(wait);

	if (FUNC3(current) || FUNC5())
		return;

	FUNC8(&pgdat->kswapd_wait, &wait, TASK_INTERRUPTIBLE);

	/*
	 * Try to sleep for a short interval. Note that kcompactd will only be
	 * woken if it is possible to sleep for a short interval. This is
	 * deliberate on the assumption that if reclaim cannot keep an
	 * eligible zone balanced that it's also unlikely that compaction will
	 * succeed.
	 */
	if (FUNC7(pgdat, reclaim_order, classzone_idx)) {
		/*
		 * Compaction records what page blocks it recently failed to
		 * isolate pages from and skips them in the future scanning.
		 * When kswapd is going to sleep, it is reasonable to assume
		 * that pages and compaction may succeed so reset the cache.
		 */
		FUNC9(pgdat);

		/*
		 * We have freed the memory, now we should compact it to make
		 * allocation of the requested order possible.
		 */
		FUNC14(pgdat, alloc_order, classzone_idx);

		remaining = FUNC11(HZ/10);

		/*
		 * If woken prematurely then reset kswapd_classzone_idx and
		 * order. The values will either be from a wakeup request or
		 * the previous request that slept prematurely.
		 */
		if (remaining) {
			pgdat->kswapd_classzone_idx = FUNC4(pgdat, classzone_idx);
			pgdat->kswapd_order = FUNC6(pgdat->kswapd_order, reclaim_order);
		}

		FUNC2(&pgdat->kswapd_wait, &wait);
		FUNC8(&pgdat->kswapd_wait, &wait, TASK_INTERRUPTIBLE);
	}

	/*
	 * After a short sleep, check if it was a premature sleep. If not, then
	 * go fully to sleep until explicitly woken up.
	 */
	if (!remaining &&
	    FUNC7(pgdat, reclaim_order, classzone_idx)) {
		FUNC13(pgdat->node_id);

		/*
		 * vmstat counters are not perfectly accurate and the estimated
		 * value for counters such as NR_FREE_PAGES can deviate from the
		 * true value by nr_online_cpus * threshold. To avoid the zone
		 * watermarks being breached while under pressure, we reduce the
		 * per-cpu vmstat threshold while kswapd is awake and restore
		 * them before going back to sleep.
		 */
		FUNC12(pgdat, calculate_normal_threshold);

		if (!FUNC5())
			FUNC10();

		FUNC12(pgdat, calculate_pressure_threshold);
	} else {
		if (remaining)
			FUNC1(KSWAPD_LOW_WMARK_HIT_QUICKLY);
		else
			FUNC1(KSWAPD_HIGH_WMARK_HIT_QUICKLY);
	}
	FUNC2(&pgdat->kswapd_wait, &wait);
}