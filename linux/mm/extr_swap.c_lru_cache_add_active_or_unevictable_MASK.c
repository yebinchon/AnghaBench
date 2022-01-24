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
struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_MLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  UNEVICTABLE_PGMLOCKED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct page*) ; 
 int VM_LOCKED ; 
 int VM_SPECIAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

void FUNC10(struct page *page,
					 struct vm_area_struct *vma)
{
	FUNC3(FUNC0(page), page);

	if (FUNC7((vma->vm_flags & (VM_LOCKED | VM_SPECIAL)) != VM_LOCKED))
		FUNC1(page);
	else if (!FUNC2(page)) {
		/*
		 * We use the irq-unsafe __mod_zone_page_stat because this
		 * counter is not modified from interrupt context, and the pte
		 * lock is held(spinlock), which implies preemption disabled.
		 */
		FUNC4(FUNC9(page), NR_MLOCK,
				    FUNC6(page));
		FUNC5(UNEVICTABLE_PGMLOCKED);
	}
	FUNC8(page);
}