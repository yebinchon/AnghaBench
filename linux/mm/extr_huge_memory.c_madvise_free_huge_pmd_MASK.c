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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mmu_gather {struct mm_struct* mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned long HPAGE_PMD_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct page* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct mmu_gather*,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 scalar_t__ FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 

bool FUNC26(struct mmu_gather *tlb, struct vm_area_struct *vma,
		pmd_t *pmd, unsigned long addr, unsigned long next)
{
	spinlock_t *ptl;
	pmd_t orig_pmd;
	struct page *page;
	struct mm_struct *mm = tlb->mm;
	bool ret = false;

	FUNC21(tlb, HPAGE_PMD_SIZE);

	ptl = FUNC13(pmd, vma);
	if (!ptl)
		goto out_unlocked;

	orig_pmd = *pmd;
	if (FUNC4(orig_pmd))
		goto out;

	if (FUNC24(!FUNC12(orig_pmd))) {
		FUNC2(FUNC20() &&
				  !FUNC5(orig_pmd));
		goto out;
	}

	page = FUNC11(orig_pmd);
	/*
	 * If other processes are mapping this page, we couldn't discard
	 * the page unless they all do MADV_FREE so let's skip the page.
	 */
	if (FUNC7(page) != 1)
		goto out;

	if (!FUNC23(page))
		goto out;

	/*
	 * If user want to discard part-pages of THP, split it so MADV_FREE
	 * will deactivate only them.
	 */
	if (next - addr != HPAGE_PMD_SIZE) {
		FUNC3(page);
		FUNC18(ptl);
		FUNC19(page);
		FUNC25(page);
		FUNC16(page);
		goto out_unlocked;
	}

	if (FUNC1(page))
		FUNC0(page);
	FUNC25(page);

	if (FUNC14(orig_pmd) || FUNC8(orig_pmd)) {
		FUNC15(vma, addr, pmd);
		orig_pmd = FUNC10(orig_pmd);
		orig_pmd = FUNC9(orig_pmd);

		FUNC17(mm, addr, pmd, orig_pmd);
		FUNC22(tlb, pmd, addr);
	}

	FUNC6(page);
	ret = true;
out:
	FUNC18(ptl);
out_unlocked:
	return ret;
}