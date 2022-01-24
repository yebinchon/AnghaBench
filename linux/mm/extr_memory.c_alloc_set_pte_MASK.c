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
typedef  scalar_t__ vm_fault_t ;
struct vm_fault {int flags; int /*<<< orphan*/ * pte; int /*<<< orphan*/  address; int /*<<< orphan*/ * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_page_prot; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TRANSPARENT_HUGE_PAGECACHE ; 
 int FAULT_FLAG_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_cgroup*,struct page*) ; 
 scalar_t__ VM_FAULT_FALLBACK ; 
 scalar_t__ VM_FAULT_NOPAGE ; 
 int VM_SHARED ; 
 scalar_t__ FUNC3 (struct vm_fault*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct mem_cgroup*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,struct vm_area_struct*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

vm_fault_t FUNC20(struct vm_fault *vmf, struct mem_cgroup *memcg,
		struct page *page)
{
	struct vm_area_struct *vma = vmf->vma;
	bool write = vmf->flags & FAULT_FLAG_WRITE;
	pte_t entry;
	vm_fault_t ret;

	if (FUNC13(*vmf->pmd) && FUNC1(page) &&
			FUNC0(CONFIG_TRANSPARENT_HUGE_PAGECACHE)) {
		/* THP on COW? */
		FUNC2(memcg, page);

		ret = FUNC3(vmf, page);
		if (ret != VM_FAULT_FALLBACK)
			return ret;
	}

	if (!vmf->pte) {
		ret = FUNC14(vmf);
		if (ret)
			return ret;
	}

	/* Re-check under ptl */
	if (FUNC18(!FUNC16(*vmf->pte)))
		return VM_FAULT_NOPAGE;

	FUNC4(vma, page);
	entry = FUNC9(page, vma->vm_page_prot);
	if (write)
		entry = FUNC7(FUNC15(entry), vma);
	/* copy-on-write page */
	if (write && !(vma->vm_flags & VM_SHARED)) {
		FUNC5(vma->vm_mm, MM_ANONPAGES);
		FUNC12(page, vma, vmf->address, false);
		FUNC8(page, memcg, false, false);
		FUNC6(page, vma);
	} else {
		FUNC5(vma->vm_mm, FUNC10(page));
		FUNC11(page, false);
	}
	FUNC17(vma->vm_mm, vmf->address, vmf->pte, entry);

	/* no need to invalidate: a not-present page won't be cached */
	FUNC19(vma, vmf->address, vmf->pte);

	return 0;
}