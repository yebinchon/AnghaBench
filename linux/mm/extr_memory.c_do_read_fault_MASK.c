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
struct TYPE_2__ {scalar_t__ map_pages; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_RETRY ; 
 int FUNC0 (struct vm_fault*) ; 
 int FUNC1 (struct vm_fault*) ; 
 int fault_around_bytes ; 
 int FUNC2 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC6(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	vm_fault_t ret = 0;

	/*
	 * Let's call ->map_pages() first and use ->fault() as fallback
	 * if page by the offset is not ready to be mapped (cold cache or
	 * something).
	 */
	if (vma->vm_ops->map_pages && fault_around_bytes >> PAGE_SHIFT > 1) {
		ret = FUNC1(vmf);
		if (ret)
			return ret;
	}

	ret = FUNC0(vmf);
	if (FUNC4(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY)))
		return ret;

	ret |= FUNC2(vmf);
	FUNC5(vmf->page);
	if (FUNC4(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY)))
		FUNC3(vmf->page);
	return ret;
}