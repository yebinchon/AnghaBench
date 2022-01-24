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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {int flags; int /*<<< orphan*/ * prealloc_pte; int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pte; int /*<<< orphan*/  address; int /*<<< orphan*/ * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; TYPE_1__* vm_ops; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fault; } ;

/* Variables and functions */
 int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static vm_fault_t FUNC9(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct mm_struct *vm_mm = vma->vm_mm;
	vm_fault_t ret;

	/*
	 * The VMA was not fully populated on mmap() or missing VM_DONTEXPAND
	 */
	if (!vma->vm_ops->fault) {
		/*
		 * If we find a migration pmd entry or a none pmd entry, which
		 * should never happen, return SIGBUS
		 */
		if (FUNC8(!FUNC3(*vmf->pmd)))
			ret = VM_FAULT_SIGBUS;
		else {
			vmf->pte = FUNC6(vmf->vma->vm_mm,
						       vmf->pmd,
						       vmf->address,
						       &vmf->ptl);
			/*
			 * Make sure this is not a temporary clearing of pte
			 * by holding ptl and checking again. A R/M/W update
			 * of pte involves: take ptl, clearing the pte so that
			 * we don't have concurrent modification by hardware
			 * followed by an update.
			 */
			if (FUNC8(FUNC5(*vmf->pte)))
				ret = VM_FAULT_SIGBUS;
			else
				ret = VM_FAULT_NOPAGE;

			FUNC7(vmf->pte, vmf->ptl);
		}
	} else if (!(vmf->flags & FAULT_FLAG_WRITE))
		ret = FUNC1(vmf);
	else if (!(vma->vm_flags & VM_SHARED))
		ret = FUNC0(vmf);
	else
		ret = FUNC2(vmf);

	/* preallocated pagetable is unused: free it */
	if (vmf->prealloc_pte) {
		FUNC4(vm_mm, vmf->prealloc_pte);
		vmf->prealloc_pte = NULL;
	}
	return ret;
}