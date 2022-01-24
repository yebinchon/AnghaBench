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
typedef  int vm_fault_t ;
struct vm_fault {int /*<<< orphan*/  cow_page; int /*<<< orphan*/  memcg; int /*<<< orphan*/  page; int /*<<< orphan*/  address; struct vm_area_struct* vma; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_HIGHUSER_MOVABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int VM_FAULT_DONE_COW ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_NOPAGE ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int FUNC5 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC11(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	vm_fault_t ret;

	if (FUNC9(FUNC3(vma)))
		return VM_FAULT_OOM;

	vmf->cow_page = FUNC2(GFP_HIGHUSER_MOVABLE, vma, vmf->address);
	if (!vmf->cow_page)
		return VM_FAULT_OOM;

	if (FUNC7(vmf->cow_page, vma->vm_mm, GFP_KERNEL,
				&vmf->memcg, false)) {
		FUNC8(vmf->cow_page);
		return VM_FAULT_OOM;
	}

	ret = FUNC1(vmf);
	if (FUNC9(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY)))
		goto uncharge_out;
	if (ret & VM_FAULT_DONE_COW)
		return ret;

	FUNC4(vmf->cow_page, vmf->page, vmf->address, vma);
	FUNC0(vmf->cow_page);

	ret |= FUNC5(vmf);
	FUNC10(vmf->page);
	FUNC8(vmf->page);
	if (FUNC9(ret & (VM_FAULT_ERROR | VM_FAULT_NOPAGE | VM_FAULT_RETRY)))
		goto uncharge_out;
	return ret;
uncharge_out:
	FUNC6(vmf->cow_page, vmf->memcg, false);
	FUNC8(vmf->cow_page);
	return ret;
}