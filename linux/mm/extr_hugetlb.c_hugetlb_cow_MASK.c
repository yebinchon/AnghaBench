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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct mm_struct {int dummy; } ;
struct hstate {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  HPAGE_RESV_OWNER ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  VM_FAULT_OOM ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct page*,unsigned long,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 struct hstate* FUNC10 (struct vm_area_struct*) ; 
 unsigned long FUNC11 (struct hstate*) ; 
 scalar_t__ FUNC12 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (struct mm_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC18 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct vm_area_struct*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct mm_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC23 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC24 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,struct mm_struct*,unsigned long,scalar_t__) ; 
 int FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC27 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct hstate*) ; 
 struct page* FUNC29 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct page*) ; 
 int /*<<< orphan*/  FUNC32 (struct hstate*,struct vm_area_struct*,unsigned long,struct page*) ; 
 int /*<<< orphan*/  FUNC33 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (struct page*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct mm_struct*,struct vm_area_struct*,struct page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC41(struct mm_struct *mm, struct vm_area_struct *vma,
		       unsigned long address, pte_t *ptep,
		       struct page *pagecache_page, spinlock_t *ptl)
{
	pte_t pte;
	struct hstate *h = FUNC10(vma);
	struct page *old_page, *new_page;
	int outside_reserve = 0;
	vm_fault_t ret = 0;
	unsigned long haddr = address & FUNC11(h);
	struct mmu_notifier_range range;

	pte = FUNC16(ptep);
	old_page = FUNC29(pte);

retry_avoidcopy:
	/* If no-one else is actually using this page, avoid the copy
	 * and just make the page writable */
	if (FUNC25(old_page) == 1 && FUNC4(old_page)) {
		FUNC26(old_page, vma);
		FUNC34(vma, haddr, ptep);
		return 0;
	}

	/*
	 * If the process that created a MAP_PRIVATE mapping is about to
	 * perform a COW due to a shared page count, attempt to satisfy
	 * the allocation without using the existing reserves. The pagecache
	 * page is used to determine if the reserve at this address was
	 * consumed or not. If reserves were used, a partial faulted mapping
	 * at the time of fork() could consume its reserves on COW instead
	 * of the full address range.
	 */
	if (FUNC18(vma, HPAGE_RESV_OWNER) &&
			old_page != pagecache_page)
		outside_reserve = 1;

	FUNC9(old_page);

	/*
	 * Drop page table lock as buddy allocator may be called. It will
	 * be acquired again before returning to the caller, as expected.
	 */
	FUNC37(ptl);
	new_page = FUNC6(vma, haddr, outside_reserve);

	if (FUNC2(new_page)) {
		/*
		 * If a process owning a MAP_PRIVATE mapping fails to COW,
		 * it is due to references held by a child and an insufficient
		 * huge page pool. To guarantee the original mappers
		 * reliability, unmap the page from child processes. The child
		 * may get SIGKILLed if it later faults.
		 */
		if (outside_reserve) {
			FUNC31(old_page);
			FUNC0(FUNC13(pte));
			FUNC39(mm, vma, old_page, haddr);
			FUNC0(FUNC13(pte));
			FUNC36(ptl);
			ptep = FUNC14(mm, haddr, FUNC12(h));
			if (FUNC19(ptep &&
				   FUNC30(FUNC16(ptep), pte)))
				goto retry_avoidcopy;
			/*
			 * race occurs while re-acquiring page table
			 * lock, and our job is done.
			 */
			return 0;
		}

		ret = FUNC40(FUNC3(new_page));
		goto out_release_old;
	}

	/*
	 * When the original hugepage is shared one, it does not have
	 * anon_vma prepared.
	 */
	if (FUNC38(FUNC7(vma))) {
		ret = VM_FAULT_OOM;
		goto out_release_all;
	}

	FUNC8(new_page, old_page, address, vma,
			    FUNC28(h));
	FUNC5(new_page);

	FUNC24(&range, MMU_NOTIFY_CLEAR, 0, vma, mm, haddr,
				haddr + FUNC12(h));
	FUNC23(&range);

	/*
	 * Retake the page table lock to check for racing updates
	 * before the page tables are altered
	 */
	FUNC36(ptl);
	ptep = FUNC14(mm, haddr, FUNC12(h));
	if (FUNC19(ptep && FUNC30(FUNC16(ptep), pte))) {
		FUNC1(new_page);

		/* Break COW */
		FUNC15(vma, haddr, ptep);
		FUNC21(mm, range.start, range.end);
		FUNC33(mm, haddr, ptep,
				FUNC20(vma, new_page, 1));
		FUNC27(old_page, true);
		FUNC17(new_page, vma, haddr);
		FUNC35(new_page);
		/* Make the old page be freed below */
		new_page = old_page;
	}
	FUNC37(ptl);
	FUNC22(&range);
out_release_all:
	FUNC32(h, vma, haddr, new_page);
	FUNC31(new_page);
out_release_old:
	FUNC31(old_page);

	FUNC36(ptl); /* Caller expects lock to be held */
	return ret;
}