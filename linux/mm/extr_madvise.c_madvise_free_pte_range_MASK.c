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
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mmu_gather {int /*<<< orphan*/  fullmm; struct mm_struct* mm; } ;
struct mm_walk {struct vm_area_struct* vma; struct mmu_gather* private; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  MM_SWAPENTS ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct page*) ; 
 unsigned long FUNC16 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct page*) ; 
 int /*<<< orphan*/  FUNC31 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (struct page*) ; 
 int /*<<< orphan*/  FUNC33 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC34 (struct mmu_gather*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC36 (struct page*) ; 
 int /*<<< orphan*/  FUNC37 (struct page*) ; 
 int /*<<< orphan*/  FUNC38 (struct page*) ; 
 struct page* FUNC39 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC40(pmd_t *pmd, unsigned long addr,
				unsigned long end, struct mm_walk *walk)

{
	struct mmu_gather *tlb = walk->private;
	struct mm_struct *mm = tlb->mm;
	struct vm_area_struct *vma = walk->vma;
	spinlock_t *ptl;
	pte_t *orig_pte, *pte, ptent;
	struct page *page;
	int nr_swap = 0;
	unsigned long next;

	next = FUNC16(addr, end);
	if (FUNC17(*pmd))
		if (FUNC12(tlb, vma, pmd, addr, next))
			goto next;

	if (FUNC18(pmd))
		return 0;

	FUNC34(tlb, PAGE_SIZE);
	orig_pte = pte = FUNC24(mm, pmd, addr, &ptl);
	FUNC9(mm);
	FUNC6();
	for (; addr != end; pte++, addr += PAGE_SIZE) {
		ptent = *pte;

		if (FUNC23(ptent))
			continue;
		/*
		 * If the pte has swp_entry, just clear page table to
		 * prevent swap-in which is more expensive rather than
		 * (page allocation + zeroing).
		 */
		if (!FUNC25(ptent)) {
			swp_entry_t entry;

			entry = FUNC26(ptent);
			if (FUNC14(entry))
				continue;
			nr_swap--;
			FUNC10(entry);
			FUNC19(mm, addr, pte, tlb->fullmm);
			continue;
		}

		page = FUNC39(vma, addr, ptent);
		if (!page)
			continue;

		/*
		 * If pmd isn't transhuge but the page is THP and
		 * is owned by only this process, split it and
		 * deactivate all pages.
		 */
		if (FUNC3(page)) {
			if (FUNC15(page) != 1)
				goto out;
			FUNC11(page);
			if (!FUNC37(page)) {
				FUNC30(page);
				goto out;
			}
			FUNC27(orig_pte, ptl);
			if (FUNC32(page)) {
				FUNC38(page);
				FUNC30(page);
				FUNC24(mm, pmd, addr, &ptl);
				goto out;
			}
			FUNC38(page);
			FUNC30(page);
			pte = FUNC24(mm, pmd, addr, &ptl);
			pte--;
			addr -= PAGE_SIZE;
			continue;
		}

		FUNC4(FUNC3(page), page);

		if (FUNC2(page) || FUNC1(page)) {
			if (!FUNC37(page))
				continue;
			/*
			 * If page is shared with others, we couldn't clear
			 * PG_dirty of the page.
			 */
			if (FUNC15(page) != 1) {
				FUNC38(page);
				continue;
			}

			if (FUNC2(page) && !FUNC36(page)) {
				FUNC38(page);
				continue;
			}

			FUNC0(page);
			FUNC38(page);
		}

		if (FUNC28(ptent) || FUNC20(ptent)) {
			/*
			 * Some of architecture(ex, PPC) don't update TLB
			 * with set_pte_at and tlb_remove_tlb_entry so for
			 * the portability, remap the pte with old|clean
			 * after pte clearing.
			 */
			ptent = FUNC29(mm, addr, pte,
							tlb->fullmm);

			ptent = FUNC22(ptent);
			ptent = FUNC21(ptent);
			FUNC31(mm, addr, pte, ptent);
			FUNC35(tlb, pte, addr);
		}
		FUNC13(page);
	}
out:
	if (nr_swap) {
		if (current->mm == mm)
			FUNC33(mm);

		FUNC5(mm, MM_SWAPENTS, nr_swap);
	}
	FUNC7();
	FUNC27(orig_pte, ptl);
	FUNC8();
next:
	return 0;
}