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
struct page_counter {unsigned long max; } ;
struct mem_cgroup {struct page_counter memsw; struct page_counter memory; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  memcg_max_mutex ; 
 int /*<<< orphan*/  FUNC1 (struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct page_counter*,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mem_cgroup*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct mem_cgroup *memcg,
				 unsigned long max, bool memsw)
{
	bool enlarge = false;
	bool drained = false;
	int ret;
	bool limits_invariant;
	struct page_counter *counter = memsw ? &memcg->memsw : &memcg->memory;

	do {
		if (FUNC5(current)) {
			ret = -EINTR;
			break;
		}

		FUNC2(&memcg_max_mutex);
		/*
		 * Make sure that the new limit (memsw or memory limit) doesn't
		 * break our basic invariant rule memory.max <= memsw.max.
		 */
		limits_invariant = memsw ? max >= memcg->memory.max :
					   max <= memcg->memsw.max;
		if (!limits_invariant) {
			FUNC3(&memcg_max_mutex);
			ret = -EINVAL;
			break;
		}
		if (max > counter->max)
			enlarge = true;
		ret = FUNC4(counter, max);
		FUNC3(&memcg_max_mutex);

		if (!ret)
			break;

		if (!drained) {
			FUNC0(memcg);
			drained = true;
			continue;
		}

		if (!FUNC6(memcg, 1,
					GFP_KERNEL, !memsw)) {
			ret = -EBUSY;
			break;
		}
	} while (true);

	if (!ret && enlarge)
		FUNC1(memcg);

	return ret;
}