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
struct vm_fault {int flags; int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pte; int /*<<< orphan*/  address; int /*<<< orphan*/  pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_page_prot; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 scalar_t__ VM_FAULT_OOM ; 
 scalar_t__ VM_FAULT_SIGBUS ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  VM_UFFD_MISSING ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vm_fault*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct mem_cgroup*,int,int) ; 
 scalar_t__ FUNC9 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mem_cgroup**,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,struct vm_area_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 void* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (struct vm_area_struct*) ; 

__attribute__((used)) static vm_fault_t FUNC28(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct mem_cgroup *memcg;
	struct page *page;
	vm_fault_t ret = 0;
	pte_t entry;

	/* File mapping without ->vm_ops ? */
	if (vma->vm_flags & VM_SHARED)
		return VM_FAULT_SIGBUS;

	/*
	 * Use pte_alloc() instead of pte_alloc_map().  We can't run
	 * pte_offset_map() on pmds where a huge pmd might be created
	 * from a different thread.
	 *
	 * pte_alloc_map() is safe to use under down_write(mmap_sem) or when
	 * parallel threads are excluded by other means.
	 *
	 * Here we only have down_read(mmap_sem).
	 */
	if (FUNC16(vma->vm_mm, vmf->pmd))
		return VM_FAULT_OOM;

	/* See the comment in pte_alloc_one_map() */
	if (FUNC25(FUNC15(vmf->pmd)))
		return 0;

	/* Use the zero-page for reads */
	if (!(vmf->flags & FAULT_FLAG_WRITE) &&
			!FUNC11(vma->vm_mm)) {
		entry = FUNC18(FUNC14(FUNC12(vmf->address),
						vma->vm_page_prot));
		vmf->pte = FUNC21(vma->vm_mm, vmf->pmd,
				vmf->address, &vmf->ptl);
		if (!FUNC20(*vmf->pte))
			goto unlock;
		ret = FUNC3(vma->vm_mm);
		if (ret)
			goto unlock;
		/* Deliver the page fault to userland, check inside PT lock */
		if (FUNC27(vma)) {
			FUNC22(vmf->pte, vmf->ptl);
			return FUNC4(vmf, VM_UFFD_MISSING);
		}
		goto setpte;
	}

	/* Allocate our own private page. */
	if (FUNC25(FUNC2(vma)))
		goto oom;
	page = FUNC1(vma, vmf->address);
	if (!page)
		goto oom;

	if (FUNC9(page, vma->vm_mm, GFP_KERNEL, &memcg,
					false))
		goto oom_free_page;

	/*
	 * The memory barrier inside __SetPageUptodate makes sure that
	 * preceeding stores to the page contents become visible before
	 * the set_pte_at() write.
	 */
	FUNC0(page);

	entry = FUNC10(page, vma->vm_page_prot);
	if (vma->vm_flags & VM_WRITE)
		entry = FUNC19(FUNC17(entry));

	vmf->pte = FUNC21(vma->vm_mm, vmf->pmd, vmf->address,
			&vmf->ptl);
	if (!FUNC20(*vmf->pte))
		goto release;

	ret = FUNC3(vma->vm_mm);
	if (ret)
		goto release;

	/* Deliver the page fault to userland, check inside PT lock */
	if (FUNC27(vma)) {
		FUNC22(vmf->pte, vmf->ptl);
		FUNC7(page, memcg, false);
		FUNC23(page);
		return FUNC4(vmf, VM_UFFD_MISSING);
	}

	FUNC5(vma->vm_mm, MM_ANONPAGES);
	FUNC13(page, vma, vmf->address, false);
	FUNC8(page, memcg, false, false);
	FUNC6(page, vma);
setpte:
	FUNC24(vma->vm_mm, vmf->address, vmf->pte, entry);

	/* No need to invalidate - it was non-present before */
	FUNC26(vma, vmf->address, vmf->pte);
unlock:
	FUNC22(vmf->pte, vmf->ptl);
	return ret;
release:
	FUNC7(page, memcg, false);
	FUNC23(page);
	goto unlock;
oom_free_page:
	FUNC23(page);
oom:
	return VM_FAULT_OOM;
}