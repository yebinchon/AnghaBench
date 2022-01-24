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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mmu_gather {int /*<<< orphan*/  mm; int /*<<< orphan*/  fullmm; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  HPAGE_PMD_NR ; 
 int /*<<< orphan*/  HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 
 struct page* FUNC13 (int /*<<< orphan*/ ) ; 
 struct page* FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct mmu_gather*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct mmu_gather*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC24 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC26(struct mmu_gather *tlb, struct vm_area_struct *vma,
		 pmd_t *pmd, unsigned long addr)
{
	pmd_t orig_pmd;
	spinlock_t *ptl;

	FUNC21(tlb, HPAGE_PMD_SIZE);

	ptl = FUNC5(pmd, vma);
	if (!ptl)
		return 0;
	/*
	 * For architectures like ppc64 we look at deposited pgtable
	 * when calling pmdp_huge_get_and_clear. So do the
	 * pgtable_trans_huge_withdraw after finishing pmdp related
	 * operations.
	 */
	orig_pmd = FUNC17(tlb->mm, addr, pmd,
			tlb->fullmm);
	FUNC23(tlb, pmd, addr);
	if (FUNC24(vma)) {
		if (FUNC7())
			FUNC25(tlb->mm, pmd);
		FUNC18(ptl);
		if (FUNC8(orig_pmd))
			FUNC22(tlb, FUNC14(orig_pmd), HPAGE_PMD_SIZE);
	} else if (FUNC8(orig_pmd)) {
		FUNC25(tlb->mm, pmd);
		FUNC18(ptl);
		FUNC22(tlb, FUNC14(orig_pmd), HPAGE_PMD_SIZE);
	} else {
		struct page *page = NULL;
		int flush_needed = 1;

		if (FUNC15(orig_pmd)) {
			page = FUNC14(orig_pmd);
			FUNC12(page, true);
			FUNC3(FUNC11(page) < 0, page);
			FUNC3(!FUNC1(page), page);
		} else if (FUNC20()) {
			swp_entry_t entry;

			FUNC2(!FUNC9(orig_pmd));
			entry = FUNC16(orig_pmd);
			page = FUNC13(FUNC19(entry));
			flush_needed = 0;
		} else
			FUNC4(1, "Non present huge pmd without pmd migration enabled!");

		if (FUNC0(page)) {
			FUNC25(tlb->mm, pmd);
			FUNC6(tlb->mm, MM_ANONPAGES, -HPAGE_PMD_NR);
		} else {
			if (FUNC7())
				FUNC25(tlb->mm, pmd);
			FUNC6(tlb->mm, FUNC10(page), -HPAGE_PMD_NR);
		}

		FUNC18(ptl);
		if (flush_needed)
			FUNC22(tlb, page, HPAGE_PMD_SIZE);
	}
	return 1;
}