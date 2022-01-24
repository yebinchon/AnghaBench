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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long HPAGE_PMD_MASK ; 
 scalar_t__ HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct page* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void FUNC13(struct vm_area_struct *vma, pmd_t *pmd,
		unsigned long address, bool freeze, struct page *page)
{
	spinlock_t *ptl;
	struct mmu_notifier_range range;

	FUNC7(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
				address & HPAGE_PMD_MASK,
				(address & HPAGE_PMD_MASK) + HPAGE_PMD_SIZE);
	FUNC6(&range);
	ptl = FUNC9(vma->vm_mm, pmd);

	/*
	 * If caller asks to setup a migration entries, we need a page to check
	 * pmd against. Otherwise we can end up replacing wrong page.
	 */
	FUNC1(freeze && !page);
	if (page && page != FUNC10(*pmd))
	        goto out;

	if (FUNC11(*pmd)) {
		page = FUNC10(*pmd);
		if (FUNC0(page))
			FUNC3(page);
	} else if (!(FUNC8(*pmd) || FUNC4(*pmd)))
		goto out;
	FUNC2(vma, pmd, range.start, freeze);
out:
	FUNC12(ptl);
	/*
	 * No need to double call mmu_notifier->invalidate_range() callback.
	 * They are 3 cases to consider inside __split_huge_pmd_locked():
	 *  1) pmdp_huge_clear_flush_notify() call invalidate_range() obvious
	 *  2) __split_huge_zero_page_pmd() read only zero page and any write
	 *    fault will trigger a flush_notify before pointing to a new page
	 *    (it is fine if the secondary mmu keeps pointing to the old zero
	 *    page in the meantime)
	 *  3) Split a huge pmd into pte pointing to the same page. No need
	 *     to invalidate secondary tlb entry they are all still valid.
	 *     any further changes to individual pte will notify. So no need
	 *     to call mmu_notifier->invalidate_range()
	 */
	FUNC5(&range);
}