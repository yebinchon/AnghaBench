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
 unsigned long FUNC0 () ; 
 int FUNC1 (unsigned long,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swap_lock ; 

__attribute__((used)) static int FUNC3(unsigned long target_pages,
				unsigned long *pages_to_unuse,
				int *type)
{
	unsigned long total_pages = 0, total_pages_to_unuse;

	FUNC2(&swap_lock);

	total_pages = FUNC0();
	if (total_pages <= target_pages) {
		/* Nothing to do */
		*pages_to_unuse = 0;
		return 1;
	}
	total_pages_to_unuse = total_pages - target_pages;
	return FUNC1(total_pages_to_unuse, pages_to_unuse, type);
}