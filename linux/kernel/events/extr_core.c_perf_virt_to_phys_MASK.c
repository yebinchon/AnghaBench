#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mm; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int TASK_SIZE ; 
 int VMALLOC_END ; 
 int VMALLOC_START ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ,struct page**) ; 
 TYPE_1__* current ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 

__attribute__((used)) static u64 FUNC5(u64 virt)
{
	u64 phys_addr = 0;
	struct page *p = NULL;

	if (!virt)
		return 0;

	if (virt >= TASK_SIZE) {
		/* If it's vmalloc()d memory, leave phys_addr as 0 */
		if (FUNC3((void *)(uintptr_t)virt) &&
		    !(virt >= VMALLOC_START && virt < VMALLOC_END))
			phys_addr = (u64)FUNC4((void *)(uintptr_t)virt);
	} else {
		/*
		 * Walking the pages tables for user address.
		 * Interrupts are disabled, so it prevents any tear down
		 * of the page tables.
		 * Try IRQ-safe __get_user_pages_fast first.
		 * If failed, leave phys_addr as 0.
		 */
		if ((current->mm != NULL) &&
		    (FUNC0(virt, 1, 0, &p) == 1))
			phys_addr = FUNC1(p) + virt % PAGE_SIZE;

		if (p)
			FUNC2(p);
	}

	return phys_addr;
}