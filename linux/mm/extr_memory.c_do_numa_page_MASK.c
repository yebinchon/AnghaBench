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
struct vm_fault {int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pte; int /*<<< orphan*/  address; int /*<<< orphan*/  orig_pte; int /*<<< orphan*/  pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_mm; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int NUMA_NO_NODE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int TNF_MIGRATED ; 
 int TNF_MIGRATE_FAIL ; 
 int TNF_NO_GROUP ; 
 int TNF_SHARED ; 
 int VM_SHARED ; 
 int FUNC1 (struct page*,struct vm_area_struct*,int) ; 
 int FUNC2 (struct page*,struct vm_area_struct*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int,int,int) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct page* FUNC21 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC22(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct page *page = NULL;
	int page_nid = NUMA_NO_NODE;
	int last_cpupid;
	int target_nid;
	bool migrated = false;
	pte_t pte, old_pte;
	bool was_writable = FUNC11(vmf->orig_pte);
	int flags = 0;

	/*
	 * The "pte" at this point cannot be used safely without
	 * validation through pte_unmap_same(). It's of NUMA type but
	 * the pfn may be screwed if the read is non atomic.
	 */
	vmf->ptl = FUNC6(vma->vm_mm, vmf->pmd);
	FUNC17(vmf->ptl);
	if (FUNC19(!FUNC10(*vmf->pte, vmf->orig_pte))) {
		FUNC12(vmf->pte, vmf->ptl);
		goto out;
	}

	/*
	 * Make it present again, Depending on how arch implementes non
	 * accessible ptes, some can allow access by kernel mode.
	 */
	old_pte = FUNC15(vma, vmf->address, vmf->pte);
	pte = FUNC9(old_pte, vma->vm_page_prot);
	pte = FUNC8(pte);
	if (was_writable)
		pte = FUNC7(pte);
	FUNC14(vma, vmf->address, vmf->pte, old_pte, pte);
	FUNC20(vma, vmf->address, vmf->pte);

	page = FUNC21(vma, vmf->address, pte);
	if (!page) {
		FUNC12(vmf->pte, vmf->ptl);
		return 0;
	}

	/* TODO: handle PTE-mapped THP */
	if (FUNC0(page)) {
		FUNC12(vmf->pte, vmf->ptl);
		return 0;
	}

	/*
	 * Avoid grouping on RO pages in general. RO pages shouldn't hurt as
	 * much anyway since they can be in shared cache state. This misses
	 * the case where a mapping is writable but the process never writes
	 * to it but pte_write gets cleared during protection updates and
	 * pte_dirty has unpredictable behaviour between PTE scan updates,
	 * background writeback, dirty balancing and application behaviour.
	 */
	if (!FUNC13(pte))
		flags |= TNF_NO_GROUP;

	/*
	 * Flag if the page is shared between multiple address spaces. This
	 * is later used when determining whether to group tasks together
	 */
	if (FUNC4(page) > 1 && (vma->vm_flags & VM_SHARED))
		flags |= TNF_SHARED;

	last_cpupid = FUNC3(page);
	page_nid = FUNC5(page);
	target_nid = FUNC2(page, vma, vmf->address, page_nid,
			&flags);
	FUNC12(vmf->pte, vmf->ptl);
	if (target_nid == NUMA_NO_NODE) {
		FUNC16(page);
		goto out;
	}

	/* Migrate to the requested node */
	migrated = FUNC1(page, vma, target_nid);
	if (migrated) {
		page_nid = target_nid;
		flags |= TNF_MIGRATED;
	} else
		flags |= TNF_MIGRATE_FAIL;

out:
	if (page_nid != NUMA_NO_NODE)
		FUNC18(last_cpupid, page_nid, 1, flags);
	return 0;
}