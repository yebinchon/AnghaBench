#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mem_cgroup {TYPE_2__* vmstats_percpu; int /*<<< orphan*/ * vmstats; TYPE_1__* vmstats_local; } ;
struct TYPE_4__ {int /*<<< orphan*/ * stat; } ;
struct TYPE_3__ {int /*<<< orphan*/ * stat; } ;

/* Variables and functions */
 scalar_t__ MEMCG_CHARGE_BATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 struct mem_cgroup* FUNC6 (struct mem_cgroup*) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct mem_cgroup *memcg, int idx, int val)
{
	long x;

	if (FUNC5())
		return;

	x = val + FUNC1(memcg->vmstats_percpu->stat[idx]);
	if (FUNC7(FUNC3(x) > MEMCG_CHARGE_BATCH)) {
		struct mem_cgroup *mi;

		/*
		 * Batch local counters to keep them in sync with
		 * the hierarchical ones.
		 */
		FUNC0(memcg->vmstats_local->stat[idx], x);
		for (mi = memcg; mi; mi = FUNC6(mi))
			FUNC4(x, &mi->vmstats[idx]);
		x = 0;
	}
	FUNC2(memcg->vmstats_percpu->stat[idx], x);
}