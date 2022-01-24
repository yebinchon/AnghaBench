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
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  anon_vma; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgtable_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long HPAGE_PMD_MASK ; 
 scalar_t__ HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int SCAN_ALLOC_HUGE_PAGE_FAIL ; 
 int SCAN_ANY_PROCESS ; 
 int SCAN_CGROUP_CHARGE_FAIL ; 
 int SCAN_FAIL ; 
 int SCAN_PMD_NULL ; 
 int SCAN_SUCCEED ; 
 int /*<<< orphan*/  THP_COLLAPSE_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int __GFP_THISNODE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct page*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mem_cgroup*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct mm_struct*,unsigned long,struct vm_area_struct**) ; 
 struct page* FUNC13 (struct page**,int,int) ; 
 int /*<<< orphan*/  khugepaged_pages_collapsed ; 
 int /*<<< orphan*/  FUNC14 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct page*,struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,struct mem_cgroup*,int,int) ; 
 int FUNC18 (struct page*,struct mm_struct*,int,struct mem_cgroup**,int) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC22 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC23 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC24 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mm_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC26 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC27 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC33 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC34 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (struct mm_struct*,int,int) ; 
 scalar_t__ FUNC41 (int) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC45(struct mm_struct *mm,
				   unsigned long address,
				   struct page **hpage,
				   int node, int referenced)
{
	pmd_t *pmd, _pmd;
	pte_t *pte;
	pgtable_t pgtable;
	struct page *new_page;
	spinlock_t *pmd_ptl, *pte_ptl;
	int isolated = 0, result = 0;
	struct mem_cgroup *memcg;
	struct vm_area_struct *vma;
	struct mmu_notifier_range range;
	gfp_t gfp;

	FUNC1(address & ~HPAGE_PMD_MASK);

	/* Only allocate from the target node */
	gfp = FUNC6() | __GFP_THISNODE;

	/*
	 * Before allocating the hugepage, release the mmap_sem read lock.
	 * The allocation can take potentially a long time if it involves
	 * sync compaction, and we do not need to hold the mmap_sem during
	 * that. We will recheck the vma after taking it again in write mode.
	 */
	FUNC42(&mm->mmap_sem);
	new_page = FUNC13(hpage, gfp, node);
	if (!new_page) {
		result = SCAN_ALLOC_HUGE_PAGE_FAIL;
		goto out_nolock;
	}

	if (FUNC41(FUNC18(new_page, mm, gfp, &memcg, true))) {
		result = SCAN_CGROUP_CHARGE_FAIL;
		goto out_nolock;
	}

	FUNC10(&mm->mmap_sem);
	result = FUNC12(mm, address, &vma);
	if (result) {
		FUNC16(new_page, memcg, true);
		FUNC42(&mm->mmap_sem);
		goto out_nolock;
	}

	pmd = FUNC20(mm, address);
	if (!pmd) {
		result = SCAN_PMD_NULL;
		FUNC16(new_page, memcg, true);
		FUNC42(&mm->mmap_sem);
		goto out_nolock;
	}

	/*
	 * __collapse_huge_page_swapin always returns with mmap_sem locked.
	 * If it fails, we release mmap_sem and jump out_nolock.
	 * Continuing to collapse causes inconsistency.
	 */
	if (!FUNC5(mm, vma, address, pmd, referenced)) {
		FUNC16(new_page, memcg, true);
		FUNC42(&mm->mmap_sem);
		goto out_nolock;
	}

	FUNC42(&mm->mmap_sem);
	/*
	 * Prevent all access to pagetables with the exception of
	 * gup_fast later handled by the ptep_clear_flush and the VM
	 * handled by the anon_vma lock + PG_lock.
	 */
	FUNC11(&mm->mmap_sem);
	result = SCAN_ANY_PROCESS;
	if (!FUNC21(mm))
		goto out;
	result = FUNC12(mm, address, &vma);
	if (result)
		goto out;
	/* check if the pmd is still valid */
	if (FUNC20(mm, address) != pmd)
		goto out;

	FUNC7(vma->anon_vma);

	FUNC24(&range, MMU_NOTIFY_CLEAR, 0, NULL, mm,
				address, address + HPAGE_PMD_SIZE);
	FUNC23(&range);

	pte = FUNC34(pmd, address);
	pte_ptl = FUNC33(mm, pmd);

	pmd_ptl = FUNC27(mm, pmd); /* probably unnecessary */
	/*
	 * After this gup_fast can't run anymore. This also removes
	 * any huge TLB entry from the CPU so we won't allow
	 * huge and small TLB entries for the same virtual address
	 * to avoid the risk of CPU bugs in that area.
	 */
	_pmd = FUNC32(vma, address, pmd);
	FUNC39(pmd_ptl);
	FUNC22(&range);

	FUNC38(pte_ptl);
	isolated = FUNC4(vma, address, pte);
	FUNC39(pte_ptl);

	if (FUNC41(!isolated)) {
		FUNC35(pte);
		FUNC38(pmd_ptl);
		FUNC0(!FUNC29(*pmd));
		/*
		 * We can only use set_pmd_at when establishing
		 * hugepmds and never for establishing regular pmds that
		 * points to regular pagetables. Use pmd_populate for that
		 */
		FUNC31(mm, pmd, FUNC30(_pmd));
		FUNC39(pmd_ptl);
		FUNC8(vma->anon_vma);
		result = SCAN_FAIL;
		goto out;
	}

	/*
	 * All pages are isolated and locked so anon_vma rmap
	 * can't run anymore.
	 */
	FUNC8(vma->anon_vma);

	FUNC3(pte, new_page, vma, address, pte_ptl);
	FUNC35(pte);
	FUNC2(new_page);
	pgtable = FUNC30(_pmd);

	_pmd = FUNC19(new_page, vma->vm_page_prot);
	_pmd = FUNC15(FUNC28(_pmd), vma);

	/*
	 * spin_lock() below is not the equivalent of smp_wmb(), so
	 * this is needed to avoid the copy_huge_page writes to become
	 * visible after the set_pmd_at() write.
	 */
	FUNC37();

	FUNC38(pmd_ptl);
	FUNC0(!FUNC29(*pmd));
	FUNC25(new_page, vma, address, true);
	FUNC17(new_page, memcg, false, true);
	FUNC9(memcg, THP_COLLAPSE_ALLOC, 1);
	FUNC14(new_page, vma);
	FUNC26(mm, pmd, pgtable);
	FUNC36(mm, address, pmd, _pmd);
	FUNC44(vma, address, pmd);
	FUNC39(pmd_ptl);

	*hpage = NULL;

	khugepaged_pages_collapsed++;
	result = SCAN_SUCCEED;
out_up_write:
	FUNC43(&mm->mmap_sem);
out_nolock:
	FUNC40(mm, isolated, result);
	return;
out:
	FUNC16(new_page, memcg, true);
	goto out_up_write;
}