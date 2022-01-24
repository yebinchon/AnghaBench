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
struct vm_fault {int /*<<< orphan*/  page; struct vm_area_struct* vma; } ;
struct vm_area_struct {TYPE_1__* vm_ops; } ;
struct TYPE_2__ {scalar_t__ page_mkwrite; } ;

/* Variables and functions */
 int VM_FAULT_ERROR ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_RETRY ; 
 int FUNC0 (struct vm_fault*) ; 
 int FUNC1 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC7(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	vm_fault_t ret, tmp;

	ret = FUNC0(vmf);
	if (FUNC5(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY)))
		return ret;

	/*
	 * Check if the backing address space wants to know that the page is
	 * about to become writable
	 */
	if (vma->vm_ops->page_mkwrite) {
		FUNC6(vmf->page);
		tmp = FUNC1(vmf);
		if (FUNC5(!tmp ||
				(tmp & (VM_FAULT_ERROR | VM_FAULT_NOPAGE)))) {
			FUNC4(vmf->page);
			return tmp;
		}
	}

	ret |= FUNC3(vmf);
	if (FUNC5(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE |
					VM_FAULT_RETRY))) {
		FUNC6(vmf->page);
		FUNC4(vmf->page);
		return ret;
	}

	FUNC2(vma, vmf->page);
	return ret;
}