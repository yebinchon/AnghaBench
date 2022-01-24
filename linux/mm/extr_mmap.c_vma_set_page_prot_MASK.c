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
struct vm_area_struct {unsigned long vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 unsigned long VM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 

void FUNC3(struct vm_area_struct *vma)
{
	unsigned long vm_flags = vma->vm_flags;
	pgprot_t vm_page_prot;

	vm_page_prot = FUNC1(vma->vm_page_prot, vm_flags);
	if (FUNC2(vma, vm_page_prot)) {
		vm_flags &= ~VM_SHARED;
		vm_page_prot = FUNC1(vm_page_prot, vm_flags);
	}
	/* remove_protection_ptes reads vma->vm_page_prot without mmap_sem */
	FUNC0(vma->vm_page_prot, vm_page_prot);
}