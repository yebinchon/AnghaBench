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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; int /*<<< orphan*/  vm_next; } ;
struct queue_pages {unsigned long flags; struct vm_area_struct* prev; } ;
struct mm_walk {struct queue_pages* private; struct vm_area_struct* vma; } ;

/* Variables and functions */
 int EFAULT ; 
 unsigned long MPOL_MF_DISCONTIG_OK ; 
 unsigned long MPOL_MF_LAZY ; 
 unsigned long MPOL_MF_STRICT ; 
 unsigned long MPOL_MF_VALID ; 
 int VM_EXEC ; 
 int VM_MIXEDMAP ; 
 int VM_READ ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(unsigned long start, unsigned long end,
				struct mm_walk *walk)
{
	struct vm_area_struct *vma = walk->vma;
	struct queue_pages *qp = walk->private;
	unsigned long endvma = vma->vm_end;
	unsigned long flags = qp->flags;

	/*
	 * Need check MPOL_MF_STRICT to return -EIO if possible
	 * regardless of vma_migratable
	 */
	if (!FUNC2(vma) &&
	    !(flags & MPOL_MF_STRICT))
		return 1;

	if (endvma > end)
		endvma = end;
	if (vma->vm_start > start)
		start = vma->vm_start;

	if (!(flags & MPOL_MF_DISCONTIG_OK)) {
		if (!vma->vm_next && vma->vm_end < end)
			return -EFAULT;
		if (qp->prev && qp->prev->vm_end < vma->vm_start)
			return -EFAULT;
	}

	qp->prev = vma;

	if (flags & MPOL_MF_LAZY) {
		/* Similar to task_numa_work, skip inaccessible VMAs */
		if (!FUNC1(vma) &&
			(vma->vm_flags & (VM_READ | VM_EXEC | VM_WRITE)) &&
			!(vma->vm_flags & VM_MIXEDMAP))
			FUNC0(vma, start, endvma);
		return 1;
	}

	/* queue pages from current vma */
	if (flags & MPOL_MF_VALID)
		return 0;
	return 1;
}