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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page {int /*<<< orphan*/  lru; } ;
struct mmu_gather {int /*<<< orphan*/  fullmm; struct mm_struct* mm; } ;
struct mm_walk {struct vm_area_struct* vma; struct madvise_walk_private* private; } ;
struct mm_struct {int dummy; } ;
struct madvise_walk_private {int pageout; struct mmu_gather* tlb; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EINTR ; 
 unsigned long HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct page*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  page_list ; 
 int FUNC17 (struct page*) ; 
 unsigned long FUNC18 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct page* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC29 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct page*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int FUNC39 (struct page*) ; 
 int /*<<< orphan*/  FUNC40 (struct page*) ; 
 scalar_t__ FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 (struct mmu_gather*,unsigned long) ; 
 int /*<<< orphan*/  FUNC43 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC44 (struct mmu_gather*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC45 (struct page*) ; 
 scalar_t__ FUNC46 (int) ; 
 int /*<<< orphan*/  FUNC47 (struct page*) ; 
 struct page* FUNC48 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC49(pmd_t *pmd,
				unsigned long addr, unsigned long end,
				struct mm_walk *walk)
{
	struct madvise_walk_private *private = walk->private;
	struct mmu_gather *tlb = private->tlb;
	bool pageout = private->pageout;
	struct mm_struct *mm = tlb->mm;
	struct vm_area_struct *vma = walk->vma;
	pte_t *orig_pte, *pte, ptent;
	spinlock_t *ptl;
	struct page *page = NULL;
	FUNC1(page_list);

	if (FUNC9(current))
		return -EINTR;

#ifdef CONFIG_TRANSPARENT_HUGEPAGE
	if (pmd_trans_huge(*pmd)) {
		pmd_t orig_pmd;
		unsigned long next = pmd_addr_end(addr, end);

		tlb_change_page_size(tlb, HPAGE_PMD_SIZE);
		ptl = pmd_trans_huge_lock(pmd, vma);
		if (!ptl)
			return 0;

		orig_pmd = *pmd;
		if (is_huge_zero_pmd(orig_pmd))
			goto huge_unlock;

		if (unlikely(!pmd_present(orig_pmd))) {
			VM_BUG_ON(thp_migration_supported() &&
					!is_pmd_migration_entry(orig_pmd));
			goto huge_unlock;
		}

		page = pmd_page(orig_pmd);
		if (next - addr != HPAGE_PMD_SIZE) {
			int err;

			if (page_mapcount(page) != 1)
				goto huge_unlock;

			get_page(page);
			spin_unlock(ptl);
			lock_page(page);
			err = split_huge_page(page);
			unlock_page(page);
			put_page(page);
			if (!err)
				goto regular_page;
			return 0;
		}

		if (pmd_young(orig_pmd)) {
			pmdp_invalidate(vma, addr, pmd);
			orig_pmd = pmd_mkold(orig_pmd);

			set_pmd_at(mm, addr, pmd, orig_pmd);
			tlb_remove_pmd_tlb_entry(tlb, pmd, addr);
		}

		ClearPageReferenced(page);
		test_and_clear_page_young(page);
		if (pageout) {
			if (!isolate_lru_page(page))
				list_add(&page->lru, &page_list);
		} else
			deactivate_page(page);
huge_unlock:
		spin_unlock(ptl);
		if (pageout)
			reclaim_pages(&page_list);
		return 0;
	}

	if (pmd_trans_unstable(pmd))
		return 0;
regular_page:
#endif
	FUNC42(tlb, PAGE_SIZE);
	orig_pte = pte = FUNC29(vma->vm_mm, pmd, addr, &ptl);
	FUNC10(mm);
	FUNC5();
	for (; addr < end; pte++, addr += PAGE_SIZE) {
		ptent = *pte;

		if (FUNC28(ptent))
			continue;

		if (!FUNC30(ptent))
			continue;

		page = FUNC48(vma, addr, ptent);
		if (!page)
			continue;

		/*
		 * Creating a THP page is expensive so split it only if we
		 * are sure it's worth. Split it if we are only owner.
		 */
		if (FUNC2(page)) {
			if (FUNC17(page) != 1)
				break;
			FUNC11(page);
			if (!FUNC45(page)) {
				FUNC34(page);
				break;
			}
			FUNC31(orig_pte, ptl);
			if (FUNC39(page)) {
				FUNC47(page);
				FUNC34(page);
				FUNC29(mm, pmd, addr, &ptl);
				break;
			}
			FUNC47(page);
			FUNC34(page);
			pte = FUNC29(mm, pmd, addr, &ptl);
			pte--;
			addr -= PAGE_SIZE;
			continue;
		}

		FUNC4(FUNC2(page), page);

		if (FUNC32(ptent)) {
			ptent = FUNC33(mm, addr, pte,
							tlb->fullmm);
			ptent = FUNC27(ptent);
			FUNC37(mm, addr, pte, ptent);
			FUNC44(tlb, pte, addr);
		}

		/*
		 * We are deactivating a page for accelerating reclaiming.
		 * VM couldn't reclaim the page unless we clear PG_young.
		 * As a side effect, it makes confuse idle-page tracking
		 * because they will miss recent referenced history.
		 */
		FUNC0(page);
		FUNC40(page);
		if (pageout) {
			if (!FUNC14(page))
				FUNC15(&page->lru, &page_list);
		} else
			FUNC8(page);
	}

	FUNC6();
	FUNC31(orig_pte, ptl);
	if (pageout)
		FUNC35(&page_list);
	FUNC7();

	return 0;
}