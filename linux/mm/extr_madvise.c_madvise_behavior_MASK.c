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
struct vm_area_struct {unsigned long vm_flags; unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_userfaultfd_ctx; int /*<<< orphan*/  vm_file; int /*<<< orphan*/  anon_vma; scalar_t__ vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {scalar_t__ map_count; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
#define  MADV_DODUMP 140 
#define  MADV_DOFORK 139 
#define  MADV_DONTDUMP 138 
#define  MADV_DONTFORK 137 
#define  MADV_HUGEPAGE 136 
#define  MADV_KEEPONFORK 135 
#define  MADV_MERGEABLE 134 
#define  MADV_NOHUGEPAGE 133 
#define  MADV_NORMAL 132 
#define  MADV_RANDOM 131 
#define  MADV_SEQUENTIAL 130 
#define  MADV_UNMERGEABLE 129 
#define  MADV_WIPEONFORK 128 
 unsigned long PAGE_SHIFT ; 
 unsigned long VM_DONTCOPY ; 
 unsigned long VM_DONTDUMP ; 
 int VM_IO ; 
 unsigned long VM_RAND_READ ; 
 unsigned long VM_SEQ_READ ; 
 int VM_SHARED ; 
 unsigned long VM_SPECIAL ; 
 unsigned long VM_WIPEONFORK ; 
 int FUNC0 (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ; 
 int FUNC1 (struct vm_area_struct*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int FUNC3 (struct vm_area_struct*,unsigned long,unsigned long,int,unsigned long*) ; 
 scalar_t__ sysctl_max_map_count ; 
 scalar_t__ FUNC4 (int) ; 
 struct vm_area_struct* FUNC5 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*) ; 

__attribute__((used)) static long FUNC7(struct vm_area_struct *vma,
		     struct vm_area_struct **prev,
		     unsigned long start, unsigned long end, int behavior)
{
	struct mm_struct *mm = vma->vm_mm;
	int error = 0;
	pgoff_t pgoff;
	unsigned long new_flags = vma->vm_flags;

	switch (behavior) {
	case MADV_NORMAL:
		new_flags = new_flags & ~VM_RAND_READ & ~VM_SEQ_READ;
		break;
	case MADV_SEQUENTIAL:
		new_flags = (new_flags & ~VM_RAND_READ) | VM_SEQ_READ;
		break;
	case MADV_RANDOM:
		new_flags = (new_flags & ~VM_SEQ_READ) | VM_RAND_READ;
		break;
	case MADV_DONTFORK:
		new_flags |= VM_DONTCOPY;
		break;
	case MADV_DOFORK:
		if (vma->vm_flags & VM_IO) {
			error = -EINVAL;
			goto out;
		}
		new_flags &= ~VM_DONTCOPY;
		break;
	case MADV_WIPEONFORK:
		/* MADV_WIPEONFORK is only supported on anonymous memory. */
		if (vma->vm_file || vma->vm_flags & VM_SHARED) {
			error = -EINVAL;
			goto out;
		}
		new_flags |= VM_WIPEONFORK;
		break;
	case MADV_KEEPONFORK:
		new_flags &= ~VM_WIPEONFORK;
		break;
	case MADV_DONTDUMP:
		new_flags |= VM_DONTDUMP;
		break;
	case MADV_DODUMP:
		if (!FUNC2(vma) && new_flags & VM_SPECIAL) {
			error = -EINVAL;
			goto out;
		}
		new_flags &= ~VM_DONTDUMP;
		break;
	case MADV_MERGEABLE:
	case MADV_UNMERGEABLE:
		error = FUNC3(vma, start, end, behavior, &new_flags);
		if (error)
			goto out_convert_errno;
		break;
	case MADV_HUGEPAGE:
	case MADV_NOHUGEPAGE:
		error = FUNC1(vma, &new_flags, behavior);
		if (error)
			goto out_convert_errno;
		break;
	}

	if (new_flags == vma->vm_flags) {
		*prev = vma;
		goto out;
	}

	pgoff = vma->vm_pgoff + ((start - vma->vm_start) >> PAGE_SHIFT);
	*prev = FUNC5(mm, *prev, start, end, new_flags, vma->anon_vma,
			  vma->vm_file, pgoff, FUNC6(vma),
			  vma->vm_userfaultfd_ctx);
	if (*prev) {
		vma = *prev;
		goto success;
	}

	*prev = vma;

	if (start != vma->vm_start) {
		if (FUNC4(mm->map_count >= sysctl_max_map_count)) {
			error = -ENOMEM;
			goto out;
		}
		error = FUNC0(mm, vma, start, 1);
		if (error)
			goto out_convert_errno;
	}

	if (end != vma->vm_end) {
		if (FUNC4(mm->map_count >= sysctl_max_map_count)) {
			error = -ENOMEM;
			goto out;
		}
		error = FUNC0(mm, vma, end, 0);
		if (error)
			goto out_convert_errno;
	}

success:
	/*
	 * vm_flags is protected by the mmap_sem held in write mode.
	 */
	vma->vm_flags = new_flags;

out_convert_errno:
	/*
	 * madvise() returns EAGAIN if kernel resources, such as
	 * slab, are temporarily unavailable.
	 */
	if (error == -ENOMEM)
		error = -EAGAIN;
out:
	return error;
}