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
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NUMA_INTERLEAVE_HIT ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_numa_stat_key ; 

__attribute__((used)) static struct page *FUNC7(gfp_t gfp, unsigned order,
					unsigned nid)
{
	struct page *page;

	page = FUNC0(gfp, order, nid);
	/* skip NUMA_INTERLEAVE_HIT counter update if numa stats is disabled */
	if (!FUNC6(&vm_numa_stat_key))
		return page;
	if (page && FUNC2(page) == nid) {
		FUNC4();
		FUNC1(FUNC3(page), NUMA_INTERLEAVE_HIT);
		FUNC5();
	}
	return page;
}