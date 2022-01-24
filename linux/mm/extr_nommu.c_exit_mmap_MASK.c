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
struct vm_area_struct {struct vm_area_struct* vm_next; } ;
struct mm_struct {struct vm_area_struct* mmap; scalar_t__ total_vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 

void FUNC3(struct mm_struct *mm)
{
	struct vm_area_struct *vma;

	if (!mm)
		return;

	mm->total_vm = 0;

	while ((vma = mm->mmap)) {
		mm->mmap = vma->vm_next;
		FUNC2(vma);
		FUNC1(mm, vma);
		FUNC0();
	}
}