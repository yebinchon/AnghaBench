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

/* Variables and functions */
 int /*<<< orphan*/  NR_ACTIVE_FILE ; 
 int /*<<< orphan*/  NR_FREE_PAGES ; 
 int /*<<< orphan*/  NR_INACTIVE_FILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  totalreserve_pages ; 
 int /*<<< orphan*/  vm_highmem_is_dirtyable ; 

__attribute__((used)) static unsigned long FUNC4(void)
{
	unsigned long x;

	x = FUNC1(NR_FREE_PAGES);
	/*
	 * Pages reserved for the kernel should not be considered
	 * dirtyable, to prevent a situation where reclaim has to
	 * clean pages in order to balance the zones.
	 */
	x -= FUNC3(x, totalreserve_pages);

	x += FUNC0(NR_INACTIVE_FILE);
	x += FUNC0(NR_ACTIVE_FILE);

	if (!vm_highmem_is_dirtyable)
		x -= FUNC2(x);

	return x + 1;	/* Ensure that we never return 0 */
}