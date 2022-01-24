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
struct vm_area_struct {int /*<<< orphan*/  vm_flags; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int /*<<< orphan*/  VM_USERMAP ; 
 int __GFP_ZERO ; 
 void* FUNC0 (unsigned long,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC2 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void *FUNC4(unsigned long size)
{
	void *ret;

	ret = FUNC0(size, GFP_KERNEL | __GFP_ZERO, PAGE_KERNEL);
	if (ret) {
		struct vm_area_struct *vma;

		FUNC1(&current->mm->mmap_sem);
		vma = FUNC2(current->mm, (unsigned long)ret);
		if (vma)
			vma->vm_flags |= VM_USERMAP;
		FUNC3(&current->mm->mmap_sem);
	}

	return ret;
}