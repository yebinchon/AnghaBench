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
typedef  int vm_flags_t ;
struct vm_area_struct {unsigned long vm_start; int vm_flags; unsigned long vm_end; struct vm_area_struct* vm_next; struct vm_area_struct* vm_prev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int VM_LOCKED_CLEAR_MASK ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (struct vm_area_struct*,struct vm_area_struct**,unsigned long,unsigned long,int) ; 
 int FUNC4 (unsigned long) ; 

__attribute__((used)) static int FUNC5(unsigned long start, size_t len,
				vm_flags_t flags)
{
	unsigned long nstart, end, tmp;
	struct vm_area_struct * vma, * prev;
	int error;

	FUNC1(FUNC4(start));
	FUNC1(len != FUNC0(len));
	end = start + len;
	if (end < start)
		return -EINVAL;
	if (end == start)
		return 0;
	vma = FUNC2(current->mm, start);
	if (!vma || vma->vm_start > start)
		return -ENOMEM;

	prev = vma->vm_prev;
	if (start > vma->vm_start)
		prev = vma;

	for (nstart = start ; ; ) {
		vm_flags_t newflags = vma->vm_flags & VM_LOCKED_CLEAR_MASK;

		newflags |= flags;

		/* Here we know that  vma->vm_start <= nstart < vma->vm_end. */
		tmp = vma->vm_end;
		if (tmp > end)
			tmp = end;
		error = FUNC3(vma, &prev, nstart, tmp, newflags);
		if (error)
			break;
		nstart = tmp;
		if (nstart < prev->vm_end)
			nstart = prev->vm_end;
		if (nstart >= end)
			break;

		vma = prev->vm_next;
		if (!vma || vma->vm_start != nstart) {
			error = -ENOMEM;
			break;
		}
	}
	return error;
}