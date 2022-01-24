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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; struct vm_area_struct* vm_next; struct vm_area_struct* vm_prev; } ;
struct mm_struct {scalar_t__ map_count; int /*<<< orphan*/  mmap_sem; scalar_t__ locked_vm; struct vm_area_struct* mmap; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 size_t FUNC0 (size_t) ; 
 unsigned long TASK_SIZE ; 
 int VM_LOCKED ; 
 int FUNC1 (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC5 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*,struct vm_area_struct*) ; 
 scalar_t__ sysctl_max_map_count ; 
 scalar_t__ FUNC9 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,unsigned long,unsigned long) ; 
 int FUNC11 (struct vm_area_struct*,unsigned long,unsigned long,struct list_head*) ; 
 scalar_t__ FUNC12 (struct vm_area_struct*) ; 

int FUNC13(struct mm_struct *mm, unsigned long start, size_t len,
		struct list_head *uf, bool downgrade)
{
	unsigned long end;
	struct vm_area_struct *vma, *prev, *last;

	if ((FUNC7(start)) || start > TASK_SIZE || len > TASK_SIZE-start)
		return -EINVAL;

	len = FUNC0(len);
	end = start + len;
	if (len == 0)
		return -EINVAL;

	/*
	 * arch_unmap() might do unmaps itself.  It must be called
	 * and finish any rbtree manipulation before this code
	 * runs and also starts to manipulate the rbtree.
	 */
	FUNC2(mm, start, end);

	/* Find the first overlapping VMA */
	vma = FUNC5(mm, start);
	if (!vma)
		return 0;
	prev = vma->vm_prev;
	/* we have  start < vma->vm_end  */

	/* if it doesn't overlap, we have nothing.. */
	if (vma->vm_start >= end)
		return 0;

	/*
	 * If we need to split any vma, do it now to save pain later.
	 *
	 * Note: mremap's move_vma VM_ACCOUNT handling assumes a partially
	 * unmapped vm_area_struct will remain in use: so lower split_vma
	 * places tmp vma above, and higher split_vma places tmp vma below.
	 */
	if (start > vma->vm_start) {
		int error;

		/*
		 * Make sure that map_count on return from munmap() will
		 * not exceed its limit; but let map_count go just above
		 * its limit temporarily, to help free resources as expected.
		 */
		if (end < vma->vm_end && mm->map_count >= sysctl_max_map_count)
			return -ENOMEM;

		error = FUNC1(mm, vma, start, 0);
		if (error)
			return error;
		prev = vma;
	}

	/* Does it split the last one? */
	last = FUNC5(mm, end);
	if (last && end > last->vm_start) {
		int error = FUNC1(mm, last, end, 1);
		if (error)
			return error;
	}
	vma = prev ? prev->vm_next : mm->mmap;

	if (FUNC9(uf)) {
		/*
		 * If userfaultfd_unmap_prep returns an error the vmas
		 * will remain splitted, but userland will get a
		 * highly unexpected error anyway. This is no
		 * different than the case where the first of the two
		 * __split_vma fails, but we don't undo the first
		 * split, despite we could. This is unlikely enough
		 * failure that it's not worth optimizing it for.
		 */
		int error = FUNC11(vma, start, end, uf);
		if (error)
			return error;
	}

	/*
	 * unlock any mlock()ed ranges before detaching vmas
	 */
	if (mm->locked_vm) {
		struct vm_area_struct *tmp = vma;
		while (tmp && tmp->vm_start < end) {
			if (tmp->vm_flags & VM_LOCKED) {
				mm->locked_vm -= FUNC12(tmp);
				FUNC6(tmp);
			}

			tmp = tmp->vm_next;
		}
	}

	/* Detach vmas from rbtree */
	FUNC3(mm, vma, prev, end);

	if (downgrade)
		FUNC4(&mm->mmap_sem);

	FUNC10(mm, vma, prev, start, end);

	/* Fix up all other VM information */
	FUNC8(mm, vma);

	return downgrade ? 1 : 0;
}