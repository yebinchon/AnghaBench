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
struct vm_fault {unsigned long address; int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_page_prot; } ;
struct page {int dummy; } ;
struct anon_vma {int dummy; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long HPAGE_PMD_MASK ; 
 int /*<<< orphan*/  HPAGE_PMD_NR ; 
 scalar_t__ HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  NUMA_HINT_FAULTS ; 
 int /*<<< orphan*/  NUMA_HINT_FAULTS_LOCAL ; 
 int NUMA_NO_NODE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int TNF_FAULT_LOCAL ; 
 int TNF_MIGRATED ; 
 int TNF_MIGRATE_FAIL ; 
 int TNF_NO_GROUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct page*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,struct page*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long,scalar_t__) ; 
 int FUNC10 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int FUNC11 () ; 
 int FUNC12 (struct page*) ; 
 struct anon_vma* FUNC13 (struct page*) ; 
 int FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC30 (struct page*) ; 
 scalar_t__ FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (struct page*) ; 
 int /*<<< orphan*/  FUNC33 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

vm_fault_t FUNC34(struct vm_fault *vmf, pmd_t pmd)
{
	struct vm_area_struct *vma = vmf->vma;
	struct anon_vma *anon_vma = NULL;
	struct page *page;
	unsigned long haddr = vmf->address & HPAGE_PMD_MASK;
	int page_nid = NUMA_NO_NODE, this_nid = FUNC11();
	int target_nid, last_cpupid = -1;
	bool page_locked;
	bool migrated = false;
	bool was_writable;
	int flags = 0;

	vmf->ptl = FUNC16(vma->vm_mm, vmf->pmd);
	if (FUNC31(!FUNC21(pmd, *vmf->pmd)))
		goto out_unlock;

	/*
	 * If there are potential migrations, wait for completion and retry
	 * without disrupting NUMA hinting information. Do not relock and
	 * check_same as the page may no longer be mapped.
	 */
	if (FUNC31(FUNC23(*vmf->pmd))) {
		page = FUNC20(*vmf->pmd);
		if (!FUNC5(page))
			goto out_unlock;
		FUNC28(vmf->ptl);
		FUNC24(page);
		goto out;
	}

	page = FUNC20(pmd);
	FUNC0(FUNC6(page));
	page_nid = FUNC14(page);
	last_cpupid = FUNC12(page);
	FUNC2(NUMA_HINT_FAULTS);
	if (page_nid == this_nid) {
		FUNC2(NUMA_HINT_FAULTS_LOCAL);
		flags |= TNF_FAULT_LOCAL;
	}

	/* See similar comment in do_numa_page for explanation */
	if (!FUNC22(pmd))
		flags |= TNF_NO_GROUP;

	/*
	 * Acquire the page lock to serialise THP migrations but avoid dropping
	 * page_table_lock if at all possible
	 */
	page_locked = FUNC30(page);
	target_nid = FUNC10(page, vma, haddr);
	if (target_nid == NUMA_NO_NODE) {
		/* If the page was locked, there are no parallel migrations */
		if (page_locked)
			goto clear_pmdnuma;
	}

	/* Migration could have started since the pmd_trans_migrating check */
	if (!page_locked) {
		page_nid = NUMA_NO_NODE;
		if (!FUNC5(page))
			goto out_unlock;
		FUNC28(vmf->ptl);
		FUNC24(page);
		goto out;
	}

	/*
	 * Page is misplaced. Page lock serialises migrations. Acquire anon_vma
	 * to serialises splits
	 */
	FUNC4(page);
	FUNC28(vmf->ptl);
	anon_vma = FUNC13(page);

	/* Confirm the PMD did not change while page_table_lock was released */
	FUNC27(vmf->ptl);
	if (FUNC31(!FUNC21(pmd, *vmf->pmd))) {
		FUNC32(page);
		FUNC25(page);
		page_nid = NUMA_NO_NODE;
		goto out_unlock;
	}

	/* Bail if we fail to protect against THP splits for any reason */
	if (FUNC31(!anon_vma)) {
		FUNC25(page);
		page_nid = NUMA_NO_NODE;
		goto clear_pmdnuma;
	}

	/*
	 * Since we took the NUMA fault, we must have observed the !accessible
	 * bit. Make sure all other CPUs agree with that, to avoid them
	 * modifying the page we're about to migrate.
	 *
	 * Must be done under PTL such that we'll observe the relevant
	 * inc_tlb_flush_pending().
	 *
	 * We are not sure a pending tlb flush here is for a huge page
	 * mapping or not. Hence use the tlb range variant
	 */
	if (FUNC8(vma->vm_mm)) {
		FUNC3(vma, haddr, haddr + HPAGE_PMD_SIZE);
		/*
		 * change_huge_pmd() released the pmd lock before
		 * invalidating the secondary MMUs sharing the primary
		 * MMU pagetables (with ->invalidate_range()). The
		 * mmu_notifier_invalidate_range_end() (which
		 * internally calls ->invalidate_range()) in
		 * change_pmd_range() will run after us, so we can't
		 * rely on it here and we need an explicit invalidate.
		 */
		FUNC9(vma->vm_mm, haddr,
					      haddr + HPAGE_PMD_SIZE);
	}

	/*
	 * Migrate the THP to the requested node, returns with page unlocked
	 * and access rights restored.
	 */
	FUNC28(vmf->ptl);

	migrated = FUNC7(vma->vm_mm, vma,
				vmf->pmd, pmd, vmf->address, page, target_nid);
	if (migrated) {
		flags |= TNF_MIGRATED;
		page_nid = target_nid;
	} else
		flags |= TNF_MIGRATE_FAIL;

	goto out;
clear_pmdnuma:
	FUNC0(!FUNC1(page));
	was_writable = FUNC22(pmd);
	pmd = FUNC19(pmd, vma->vm_page_prot);
	pmd = FUNC18(pmd);
	if (was_writable)
		pmd = FUNC17(pmd);
	FUNC26(vma->vm_mm, haddr, vmf->pmd, pmd);
	FUNC33(vma, vmf->address, vmf->pmd);
	FUNC32(page);
out_unlock:
	FUNC28(vmf->ptl);

out:
	if (anon_vma)
		FUNC15(anon_vma);

	if (page_nid != NUMA_NO_NODE)
		FUNC29(last_cpupid, page_nid, HPAGE_PMD_NR,
				flags);

	return 0;
}