#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {unsigned long address; int pgoff; int /*<<< orphan*/ * pte; int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pmd; TYPE_2__* vma; int /*<<< orphan*/  prealloc_pte; } ;
typedef  int pgoff_t ;
struct TYPE_4__ {TYPE_1__* vm_ops; int /*<<< orphan*/  vm_mm; scalar_t__ vm_pgoff; int /*<<< orphan*/  vm_start; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* map_pages ) (struct vm_fault*,int,int) ;} ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int PTRS_PER_PTE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  fault_around_bytes ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct vm_fault*,int,int) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static vm_fault_t FUNC11(struct vm_fault *vmf)
{
	unsigned long address = vmf->address, nr_pages, mask;
	pgoff_t start_pgoff = vmf->pgoff;
	pgoff_t end_pgoff;
	int off;
	vm_fault_t ret = 0;

	nr_pages = FUNC0(fault_around_bytes) >> PAGE_SHIFT;
	mask = ~(nr_pages * PAGE_SIZE - 1) & PAGE_MASK;

	vmf->address = FUNC1(address & mask, vmf->vma->vm_start);
	off = ((address - vmf->address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1);
	start_pgoff -= off;

	/*
	 *  end_pgoff is either the end of the page table, the end of
	 *  the vma or nr_pages from start_pgoff, depending what is nearest.
	 */
	end_pgoff = start_pgoff -
		((vmf->address >> PAGE_SHIFT) & (PTRS_PER_PTE - 1)) +
		PTRS_PER_PTE - 1;
	end_pgoff = FUNC2(end_pgoff, FUNC10(vmf->vma) + vmf->vma->vm_pgoff - 1,
			start_pgoff + nr_pages - 1);

	if (FUNC3(*vmf->pmd)) {
		vmf->prealloc_pte = FUNC5(vmf->vma->vm_mm);
		if (!vmf->prealloc_pte)
			goto out;
		FUNC8(); /* See comment in __pte_alloc() */
	}

	vmf->vma->vm_ops->map_pages(vmf, start_pgoff, end_pgoff);

	/* Huge page is mapped? Page fault is solved */
	if (FUNC4(*vmf->pmd)) {
		ret = VM_FAULT_NOPAGE;
		goto out;
	}

	/* ->map_pages() haven't done anything useful. Cold page cache? */
	if (!vmf->pte)
		goto out;

	/* check if the page fault is solved */
	vmf->pte -= (vmf->address >> PAGE_SHIFT) - (address >> PAGE_SHIFT);
	if (!FUNC6(*vmf->pte))
		ret = VM_FAULT_NOPAGE;
	FUNC7(vmf->pte, vmf->ptl);
out:
	vmf->address = address;
	vmf->pte = NULL;
	return ret;
}