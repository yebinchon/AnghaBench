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
struct vm_area_struct {unsigned long vm_end; int vm_flags; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 unsigned int FOLL_WRITE ; 
 int VM_MAYREAD ; 
 int VM_MAYWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,void*,void*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC3 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct task_struct *tsk, struct mm_struct *mm,
		unsigned long addr, void *buf, int len, unsigned int gup_flags)
{
	struct vm_area_struct *vma;
	int write = gup_flags & FOLL_WRITE;

	if (FUNC2(&mm->mmap_sem))
		return 0;

	/* the access must start within one of the target process's mappings */
	vma = FUNC3(mm, addr);
	if (vma) {
		/* don't overrun this mapping */
		if (addr + len >= vma->vm_end)
			len = vma->vm_end - addr;

		/* only read or write mappings where it is permitted */
		if (write && vma->vm_flags & VM_MAYWRITE)
			FUNC1(vma, NULL, addr,
					 (void *) addr, buf, len);
		else if (!write && vma->vm_flags & VM_MAYREAD)
			FUNC0(vma, NULL, addr,
					    buf, (void *) addr, len);
		else
			len = 0;
	} else {
		len = 0;
	}

	FUNC4(&mm->mmap_sem);

	return len;
}