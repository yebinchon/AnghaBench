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
typedef  int vm_fault_t ;
struct vm_fault {int /*<<< orphan*/ * page; scalar_t__ prealloc_pte; struct vm_area_struct* vma; int /*<<< orphan*/ * pmd; } ;
struct vm_area_struct {TYPE_1__* vm_ops; int /*<<< orphan*/  vm_mm; } ;
struct TYPE_2__ {int (* fault ) (struct vm_fault*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int VM_FAULT_DONE_COW ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_HWPOISON ; 
 int VM_FAULT_LOCKED ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_RETRY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct vm_fault*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_fault_t FUNC11(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	vm_fault_t ret;

	/*
	 * Preallocate pte before we take page_lock because this might lead to
	 * deadlocks for memcg reclaim which waits for pages under writeback:
	 *				lock_page(A)
	 *				SetPageWriteback(A)
	 *				unlock_page(A)
	 * lock_page(B)
	 *				lock_page(B)
	 * pte_alloc_pne
	 *   shrink_page_list
	 *     wait_on_page_writeback(A)
	 *				SetPageWriteback(B)
	 *				unlock_page(B)
	 *				# flush A, B to clear the writeback
	 */
	if (FUNC4(*vmf->pmd) && !vmf->prealloc_pte) {
		vmf->prealloc_pte = FUNC5(vmf->vma->vm_mm);
		if (!vmf->prealloc_pte)
			return VM_FAULT_OOM;
		FUNC7(); /* See comment in __pte_alloc() */
	}

	ret = vma->vm_ops->fault(vmf);
	if (FUNC9(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY |
			    VM_FAULT_DONE_COW)))
		return ret;

	if (FUNC9(FUNC0(vmf->page))) {
		if (ret & VM_FAULT_LOCKED)
			FUNC10(vmf->page);
		FUNC6(vmf->page);
		vmf->page = NULL;
		return VM_FAULT_HWPOISON;
	}

	if (FUNC9(!(ret & VM_FAULT_LOCKED)))
		FUNC3(vmf->page);
	else
		FUNC2(!FUNC1(vmf->page), vmf->page);

	return ret;
}