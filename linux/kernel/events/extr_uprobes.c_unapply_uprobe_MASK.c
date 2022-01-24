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
struct vm_area_struct {int vm_end; int vm_start; scalar_t__ vm_pgoff; int /*<<< orphan*/  vm_file; struct vm_area_struct* vm_next; } ;
struct uprobe {scalar_t__ inode; int offset; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; struct vm_area_struct* mmap; } ;
typedef  int loff_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct vm_area_struct*,int) ; 
 int FUNC3 (struct uprobe*,struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*,int) ; 

__attribute__((used)) static int FUNC6(struct uprobe *uprobe, struct mm_struct *mm)
{
	struct vm_area_struct *vma;
	int err = 0;

	FUNC0(&mm->mmap_sem);
	for (vma = mm->mmap; vma; vma = vma->vm_next) {
		unsigned long vaddr;
		loff_t offset;

		if (!FUNC5(vma, false) ||
		    FUNC1(vma->vm_file) != uprobe->inode)
			continue;

		offset = (loff_t)vma->vm_pgoff << PAGE_SHIFT;
		if (uprobe->offset <  offset ||
		    uprobe->offset >= offset + vma->vm_end - vma->vm_start)
			continue;

		vaddr = FUNC2(vma, uprobe->offset);
		err |= FUNC3(uprobe, mm, vaddr);
	}
	FUNC4(&mm->mmap_sem);

	return err;
}