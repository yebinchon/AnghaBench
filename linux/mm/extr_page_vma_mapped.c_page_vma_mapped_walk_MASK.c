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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct page_vma_mapped_walk {int address; int flags; int /*<<< orphan*/ * ptl; int /*<<< orphan*/ * pmd; int /*<<< orphan*/ * pte; struct page* page; TYPE_1__* vma; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;
struct TYPE_2__ {int vm_end; struct mm_struct* vm_mm; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int PMD_SIZE ; 
 int PVMW_MIGRATION ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct page*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct page_vma_mapped_walk*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct page_vma_mapped_walk*) ; 
 struct page* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct page_vma_mapped_walk*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/ * FUNC18 (struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,int) ; 
 struct page* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC26 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC33 () ; 
 scalar_t__ FUNC34 (scalar_t__) ; 

bool FUNC35(struct page_vma_mapped_walk *pvmw)
{
	struct mm_struct *mm = pvmw->vma->vm_mm;
	struct page *page = pvmw->page;
	pgd_t *pgd;
	p4d_t *p4d;
	pud_t *pud;
	pmd_t pmde;

	/* The only possible pmd mapping has been handled on last iteration */
	if (pvmw->pmd && !pvmw->pte)
		return FUNC13(pvmw);

	if (pvmw->pte)
		goto next_pte;

	if (FUNC34(FUNC0(pvmw->page))) {
		/* when pud is not present, pte will be NULL */
		pvmw->pte = FUNC7(mm, pvmw->address, FUNC17(page));
		if (!pvmw->pte)
			return false;

		pvmw->ptl = FUNC6(FUNC16(page), mm, pvmw->pte);
		FUNC31(pvmw->ptl);
		if (!FUNC4(pvmw))
			return FUNC13(pvmw);
		return true;
	}
restart:
	pgd = FUNC18(mm, pvmw->address);
	if (!FUNC19(*pgd))
		return false;
	p4d = FUNC14(pgd, pvmw->address);
	if (!FUNC15(*p4d))
		return false;
	pud = FUNC29(p4d, pvmw->address);
	if (!FUNC30(*pud))
		return false;
	pvmw->pmd = FUNC21(pud, pvmw->address);
	/*
	 * Make sure the pmd value isn't cached in a register by the
	 * compiler and used as a stale value after we've observed a
	 * subsequent update.
	 */
	pmde = FUNC2(*pvmw->pmd);
	if (FUNC25(pmde) || FUNC9(pmde)) {
		pvmw->ptl = FUNC20(mm, pvmw->pmd);
		if (FUNC10(FUNC25(*pvmw->pmd))) {
			if (pvmw->flags & PVMW_MIGRATION)
				return FUNC13(pvmw);
			if (FUNC22(*pvmw->pmd) != page)
				return FUNC13(pvmw);
			return true;
		} else if (!FUNC23(*pvmw->pmd)) {
			if (FUNC33()) {
				if (!(pvmw->flags & PVMW_MIGRATION))
					return FUNC13(pvmw);
				if (FUNC8(FUNC24(*pvmw->pmd))) {
					swp_entry_t entry = FUNC24(*pvmw->pmd);

					if (FUNC12(entry) != page)
						return FUNC13(pvmw);
					return true;
				}
			}
			return FUNC13(pvmw);
		} else {
			/* THP pmd was split under us: handle on pte level */
			FUNC32(pvmw->ptl);
			pvmw->ptl = NULL;
		}
	} else if (!FUNC23(pmde)) {
		return false;
	}
	if (!FUNC11(pvmw))
		goto next_pte;
	while (1) {
		if (FUNC4(pvmw))
			return true;
next_pte:
		/* Seek to next pte only makes sense for THP */
		if (!FUNC1(pvmw->page) || FUNC0(pvmw->page))
			return FUNC13(pvmw);
		do {
			pvmw->address += PAGE_SIZE;
			if (pvmw->address >= pvmw->vma->vm_end ||
			    pvmw->address >=
					FUNC3(pvmw->page, pvmw->vma) +
					FUNC5(pvmw->page) * PAGE_SIZE)
				return FUNC13(pvmw);
			/* Did we cross page table boundary? */
			if (pvmw->address % PMD_SIZE == 0) {
				FUNC28(pvmw->pte);
				if (pvmw->ptl) {
					FUNC32(pvmw->ptl);
					pvmw->ptl = NULL;
				}
				goto restart;
			} else {
				pvmw->pte++;
			}
		} while (FUNC27(*pvmw->pte));

		if (!pvmw->ptl) {
			pvmw->ptl = FUNC26(mm, pvmw->pmd);
			FUNC31(pvmw->ptl);
		}
	}
}