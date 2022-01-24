#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ swp_entry_t ;
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_end; struct mm_struct* vm_mm; } ;
struct page_vma_mapped_walk {unsigned long address; int /*<<< orphan*/ * pte; struct vm_area_struct* vma; struct page* page; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {unsigned long start; scalar_t__ end; } ;
struct mm_struct {int /*<<< orphan*/  mmlist; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  enum ttu_flags { ____Placeholder_ttu_flags } ttu_flags ;
struct TYPE_8__ {int /*<<< orphan*/  mmlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MIGRATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 int /*<<< orphan*/  MM_SWAPENTS ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int TTU_IGNORE_ACCESS ; 
 int TTU_IGNORE_HWPOISON ; 
 int TTU_IGNORE_MLOCK ; 
 int TTU_MIGRATION ; 
 int TTU_MUNLOCK ; 
 int TTU_SPLIT_FREEZE ; 
 int TTU_SPLIT_HUGE_PMD ; 
 int /*<<< orphan*/  FUNC9 (int,struct page*) ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_area_struct*,unsigned long*,scalar_t__*) ; 
 scalar_t__ FUNC12 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_area_struct*,unsigned long,struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct vm_area_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct vm_area_struct*,unsigned long,scalar_t__) ; 
 scalar_t__ FUNC18 (struct mm_struct*,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC20 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 TYPE_6__ init_mm ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 scalar_t__ FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC25 (struct page*) ; 
 TYPE_1__ FUNC26 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 
 int /*<<< orphan*/  FUNC29 (struct page*) ; 
 int /*<<< orphan*/  FUNC30 (struct page*) ; 
 int /*<<< orphan*/  mmlist_lock ; 
 int /*<<< orphan*/  FUNC31 (struct mm_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC33 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC34 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,struct mm_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct page*) ; 
 int /*<<< orphan*/  FUNC36 (struct page*,scalar_t__) ; 
 scalar_t__ FUNC37 (struct page*) ; 
 struct page* FUNC38 (struct page*) ; 
 scalar_t__ FUNC39 (struct page_vma_mapped_walk*) ; 
 int /*<<< orphan*/  FUNC40 (struct page_vma_mapped_walk*) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ) ; 
 struct page* FUNC42 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC48 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC49 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC50 (struct page*) ; 
 int /*<<< orphan*/  FUNC51 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (struct page*) ; 
 int /*<<< orphan*/  FUNC53 (struct page_vma_mapped_walk*,struct page*) ; 
 int /*<<< orphan*/  FUNC54 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (struct mm_struct*,scalar_t__) ; 
 scalar_t__ FUNC56 (struct mm_struct*,int) ; 
 int /*<<< orphan*/  FUNC57 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC58 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC59 (struct vm_area_struct*,unsigned long,int,struct page*) ; 
 scalar_t__ FUNC60 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC61 (TYPE_1__) ; 
 scalar_t__ FUNC62 (int) ; 
 int /*<<< orphan*/  FUNC63 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC64 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC65 (struct vm_area_struct*) ; 

__attribute__((used)) static bool FUNC66(struct page *page, struct vm_area_struct *vma,
		     unsigned long address, void *arg)
{
	struct mm_struct *mm = vma->vm_mm;
	struct page_vma_mapped_walk pvmw = {
		.page = page,
		.vma = vma,
		.address = address,
	};
	pte_t pteval;
	struct page *subpage;
	bool ret = true;
	struct mmu_notifier_range range;
	enum ttu_flags flags = (enum ttu_flags)arg;

	/* munlock has nothing to gain from examining un-locked vmas */
	if ((flags & TTU_MUNLOCK) && !(vma->vm_flags & VM_LOCKED))
		return true;

	if (FUNC0(CONFIG_MIGRATION) && (flags & TTU_MIGRATION) &&
	    FUNC22(page) && !FUNC21(page))
		return true;

	if (flags & TTU_SPLIT_HUGE_PMD) {
		FUNC59(vma, address,
				flags & TTU_SPLIT_FREEZE, page);
	}

	/*
	 * For THP, we have to assume the worse case ie pmd for invalidation.
	 * For hugetlb, it could be much worse if we need to do pud
	 * invalidation in the case of pmd sharing.
	 *
	 * Note that the page can not be free in this function as call of
	 * try_to_unmap() must hold a reference on the page.
	 */
	FUNC34(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
				address,
				FUNC27(vma->vm_end, address + FUNC37(page)));
	if (FUNC4(page)) {
		/*
		 * If sharing is possible, start and end will be adjusted
		 * accordingly.
		 */
		FUNC11(vma, &range.start,
						     &range.end);
	}
	FUNC33(&range);

	while (FUNC39(&pvmw)) {
#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
		/* PMD-mapped THP migration entry */
		if (!pvmw.pte && (flags & TTU_MIGRATION)) {
			VM_BUG_ON_PAGE(PageHuge(page) || !PageTransCompound(page), page);

			set_pmd_migration_entry(&pvmw, page);
			continue;
		}
#endif

		/*
		 * If the page is mlock()d, we cannot swap it out.
		 * If it's recently referenced (perhaps page_referenced
		 * skipped over this mm) then we should reactivate it.
		 */
		if (!(flags & TTU_IGNORE_MLOCK)) {
			if (vma->vm_flags & VM_LOCKED) {
				/* PTE-mapped THP are never mlocked */
				if (!FUNC7(page)) {
					/*
					 * Holding pte lock, we do *not* need
					 * mmap_sem here
					 */
					FUNC28(page);
				}
				ret = false;
				FUNC40(&pvmw);
				break;
			}
			if (flags & TTU_MUNLOCK)
				continue;
		}

		/* Unexpected PMD-mapped THP? */
		FUNC9(!pvmw.pte, page);

		subpage = page - FUNC38(page) + FUNC42(*pvmw.pte);
		address = pvmw.address;

		if (FUNC4(page)) {
			if (FUNC18(mm, &address, pvmw.pte)) {
				/*
				 * huge_pmd_unshare unmapped an entire PMD
				 * page.  There is no way of knowing exactly
				 * which PMDs may be cached for this mm, so
				 * we must flush them all.  start/end were
				 * already adjusted above to cover this range.
				 */
				FUNC16(vma, range.start, range.end);
				FUNC17(vma, range.start, range.end);
				FUNC31(mm, range.start,
							      range.end);

				/*
				 * The ref count of the PMD page was dropped
				 * which is part of the way map counting
				 * is done for shared PMDs.  Return 'true'
				 * here.  When there is no other sharing,
				 * huge_pmd_unshare returns false and we will
				 * unmap the actual page and drop map count
				 * to zero.
				 */
				FUNC40(&pvmw);
				break;
			}
		}

		if (FUNC0(CONFIG_MIGRATION) &&
		    (flags & TTU_MIGRATION) &&
		    FUNC22(page)) {
			swp_entry_t entry;
			pte_t swp_pte;

			pteval = FUNC49(mm, pvmw.address, pvmw.pte);

			/*
			 * Store the pfn of the page in a special migration
			 * pte. do_swap_page() will wait until the migration
			 * pte is removed and then restart fault handling.
			 */
			entry = FUNC26(page, 0);
			swp_pte = FUNC61(entry);
			if (FUNC43(pteval))
				swp_pte = FUNC44(swp_pte);
			FUNC54(mm, pvmw.address, pvmw.pte, swp_pte);
			/*
			 * No need to invalidate here it will synchronize on
			 * against the special swap migration pte.
			 *
			 * The assignment to subpage above was computed from a
			 * swap PTE which results in an invalid pointer.
			 * Since only PAGE_SIZE pages can currently be
			 * migrated, just set it to page. This will need to be
			 * changed when hugepage migrations to device private
			 * memory are supported.
			 */
			subpage = page;
			goto discard;
		}

		if (!(flags & TTU_IGNORE_ACCESS)) {
			if (FUNC48(vma, address,
						pvmw.pte)) {
				ret = false;
				FUNC40(&pvmw);
				break;
			}
		}

		/* Nuke the page table entry. */
		FUNC15(vma, address, FUNC42(*pvmw.pte));
		if (FUNC56(mm, flags)) {
			/*
			 * We clear the PTE but do not flush so potentially
			 * a remote CPU could still be writing to the page.
			 * If the entry was previously clean then the
			 * architecture must guarantee that a clear->dirty
			 * transition on a cached TLB entry is written through
			 * and traps if the PTE is unmapped.
			 */
			pteval = FUNC49(mm, address, pvmw.pte);

			FUNC55(mm, FUNC41(pteval));
		} else {
			pteval = FUNC47(vma, address, pvmw.pte);
		}

		/* Move the dirty bit to the page. Now the pte is gone. */
		if (FUNC41(pteval))
			FUNC52(page);

		/* Update high watermark before we lower rss */
		FUNC63(mm);

		if (FUNC3(page) && !(flags & TTU_IGNORE_HWPOISON)) {
			pteval = FUNC61(FUNC25(subpage));
			if (FUNC4(page)) {
				FUNC19(FUNC13(page), mm);
				FUNC51(mm, address,
						     pvmw.pte, pteval,
						     FUNC65(vma));
			} else {
				FUNC14(mm, FUNC29(page));
				FUNC54(mm, address, pvmw.pte, pteval);
			}

		} else if (FUNC45(pteval) && !FUNC64(vma)) {
			/*
			 * The guest indicated that the page content is of no
			 * interest anymore. Simply discard the pte, vmscan
			 * will take care of the rest.
			 * A future reference will then fault in a new zero
			 * page. When userfaultfd is active, we must not drop
			 * this page though, as its main user (postcopy
			 * migration) will not expect userfaults on already
			 * copied pages.
			 */
			FUNC14(mm, FUNC29(page));
			/* We have to invalidate as we cleared the pte */
			FUNC31(mm, address,
						      address + PAGE_SIZE);
		} else if (FUNC0(CONFIG_MIGRATION) &&
				(flags & (TTU_MIGRATION|TTU_SPLIT_FREEZE))) {
			swp_entry_t entry;
			pte_t swp_pte;

			if (FUNC12(mm, vma, address, pteval) < 0) {
				FUNC54(mm, address, pvmw.pte, pteval);
				ret = false;
				FUNC40(&pvmw);
				break;
			}

			/*
			 * Store the pfn of the page in a special migration
			 * pte. do_swap_page() will wait until the migration
			 * pte is removed and then restart fault handling.
			 */
			entry = FUNC26(subpage,
					FUNC46(pteval));
			swp_pte = FUNC61(entry);
			if (FUNC43(pteval))
				swp_pte = FUNC44(swp_pte);
			FUNC54(mm, address, pvmw.pte, swp_pte);
			/*
			 * No need to invalidate here it will synchronize on
			 * against the special swap migration pte.
			 */
		} else if (FUNC1(page)) {
			swp_entry_t entry = { .val = FUNC35(subpage) };
			pte_t swp_pte;
			/*
			 * Store the swap location in the pte.
			 * See handle_pte_fault() ...
			 */
			if (FUNC62(FUNC5(page) != FUNC6(page))) {
				FUNC10(1);
				ret = false;
				/* We have to invalidate as we cleared the pte */
				FUNC31(mm, address,
							address + PAGE_SIZE);
				FUNC40(&pvmw);
				break;
			}

			/* MADV_FREE page check */
			if (!FUNC5(page)) {
				if (!FUNC2(page)) {
					/* Invalidate as we cleared the pte */
					FUNC31(mm,
						address, address + PAGE_SIZE);
					FUNC14(mm, MM_ANONPAGES);
					goto discard;
				}

				/*
				 * If the page was redirtied, it cannot be
				 * discarded. Remap the page to page table.
				 */
				FUNC54(mm, address, pvmw.pte, pteval);
				FUNC8(page);
				ret = false;
				FUNC40(&pvmw);
				break;
			}

			if (FUNC60(entry) < 0) {
				FUNC54(mm, address, pvmw.pte, pteval);
				ret = false;
				FUNC40(&pvmw);
				break;
			}
			if (FUNC12(mm, vma, address, pteval) < 0) {
				FUNC54(mm, address, pvmw.pte, pteval);
				ret = false;
				FUNC40(&pvmw);
				break;
			}
			if (FUNC24(&mm->mmlist)) {
				FUNC57(&mmlist_lock);
				if (FUNC24(&mm->mmlist))
					FUNC23(&mm->mmlist, &init_mm.mmlist);
				FUNC58(&mmlist_lock);
			}
			FUNC14(mm, MM_ANONPAGES);
			FUNC20(mm, MM_SWAPENTS);
			swp_pte = FUNC61(entry);
			if (FUNC43(pteval))
				swp_pte = FUNC44(swp_pte);
			FUNC54(mm, address, pvmw.pte, swp_pte);
			/* Invalidate as we cleared the pte */
			FUNC31(mm, address,
						      address + PAGE_SIZE);
		} else {
			/*
			 * This is a locked file-backed page, thus it cannot
			 * be removed from the page cache and replaced by a new
			 * page before mmu_notifier_invalidate_range_end, so no
			 * concurrent thread might update its page table to
			 * point at new page while a device still is using this
			 * page.
			 *
			 * See Documentation/vm/mmu_notifier.rst
			 */
			FUNC14(mm, FUNC30(page));
		}
discard:
		/*
		 * No need to call mmu_notifier_invalidate_range() it has be
		 * done above for all cases requiring it to happen under page
		 * table lock before mmu_notifier_invalidate_range_end()
		 *
		 * See Documentation/vm/mmu_notifier.rst
		 */
		FUNC36(subpage, FUNC4(page));
		FUNC50(page);
	}

	FUNC32(&range);

	return ret;
}