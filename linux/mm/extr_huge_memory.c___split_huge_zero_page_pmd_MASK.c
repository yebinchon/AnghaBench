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
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;

/* Variables and functions */
 int HPAGE_PMD_NR ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct vm_area_struct *vma,
		unsigned long haddr, pmd_t *pmd)
{
	struct mm_struct *mm = vma->vm_mm;
	pgtable_t pgtable;
	pmd_t _pmd;
	int i;

	/*
	 * Leave pmd empty until pte is filled note that it is fine to delay
	 * notification until mmu_notifier_invalidate_range_end() as we are
	 * replacing a zero pmd write protected page with a zero pte write
	 * protected page.
	 *
	 * See Documentation/vm/mmu_notifier.rst
	 */
	FUNC5(vma, haddr, pmd);

	pgtable = FUNC3(mm, pmd);
	FUNC4(mm, &_pmd, pgtable);

	for (i = 0; i < HPAGE_PMD_NR; i++, haddr += PAGE_SIZE) {
		pte_t *pte, entry;
		entry = FUNC2(FUNC1(haddr), vma->vm_page_prot);
		entry = FUNC6(entry);
		pte = FUNC8(&_pmd, haddr);
		FUNC0(!FUNC7(*pte));
		FUNC10(mm, haddr, pte, entry);
		FUNC9(pte);
	}
	FUNC11(); /* make pte visible before pmd */
	FUNC4(mm, pmd, pgtable);
}