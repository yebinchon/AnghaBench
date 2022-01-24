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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_pgoff; unsigned long vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct rb_node {int dummy; } ;
struct mm_struct {unsigned long def_flags; scalar_t__ map_count; unsigned long total_vm; unsigned long data_vm; unsigned long locked_vm; } ;
struct list_head {int dummy; } ;
typedef  unsigned long pgoff_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MAP_FIXED ; 
 int /*<<< orphan*/  NULL_VM_UFFD_CTX ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long VM_ACCOUNT ; 
 unsigned long VM_DATA_DEFAULT_FLAGS ; 
 unsigned long VM_EXEC ; 
 unsigned long VM_LOCKED ; 
 unsigned long VM_SOFTDIRTY ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC0 (struct mm_struct*,unsigned long,unsigned long,struct list_head*) ; 
 scalar_t__ FUNC1 (struct mm_struct*,unsigned long,unsigned long,struct vm_area_struct**,struct rb_node***,struct rb_node**) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,unsigned long,unsigned long) ; 
 int FUNC4 (struct mm_struct*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*) ; 
 scalar_t__ FUNC7 (struct mm_struct*,unsigned long) ; 
 scalar_t__ sysctl_max_map_count ; 
 struct vm_area_struct* FUNC8 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ; 
 struct vm_area_struct* FUNC12 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC14(unsigned long addr, unsigned long len, unsigned long flags, struct list_head *uf)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma, *prev;
	struct rb_node **rb_link, *rb_parent;
	pgoff_t pgoff = addr >> PAGE_SHIFT;
	int error;

	/* Until we need other flags, refuse anything except VM_EXEC. */
	if ((flags & (~VM_EXEC)) != 0)
		return -EINVAL;
	flags |= VM_DATA_DEFAULT_FLAGS | VM_ACCOUNT | mm->def_flags;

	error = FUNC2(NULL, addr, len, 0, MAP_FIXED);
	if (FUNC5(error))
		return error;

	error = FUNC4(mm, mm->def_flags, len);
	if (error)
		return error;

	/*
	 * Clear old maps.  this also does some error checking for us
	 */
	while (FUNC1(mm, addr, addr + len, &prev, &rb_link,
			      &rb_parent)) {
		if (FUNC0(mm, addr, len, uf))
			return -ENOMEM;
	}

	/* Check against address space limits *after* clearing old maps... */
	if (!FUNC3(mm, flags, len >> PAGE_SHIFT))
		return -ENOMEM;

	if (mm->map_count > sysctl_max_map_count)
		return -ENOMEM;

	if (FUNC7(mm, len >> PAGE_SHIFT))
		return -ENOMEM;

	/* Can we just expand an old private anonymous mapping? */
	vma = FUNC12(mm, prev, addr, addr + len, flags,
			NULL, NULL, pgoff, NULL, NULL_VM_UFFD_CTX);
	if (vma)
		goto out;

	/*
	 * create a vma struct for an anonymous mapping
	 */
	vma = FUNC8(mm);
	if (!vma) {
		FUNC10(len >> PAGE_SHIFT);
		return -ENOMEM;
	}

	FUNC13(vma);
	vma->vm_start = addr;
	vma->vm_end = addr + len;
	vma->vm_pgoff = pgoff;
	vma->vm_flags = flags;
	vma->vm_page_prot = FUNC9(flags);
	FUNC11(mm, vma, prev, rb_link, rb_parent);
out:
	FUNC6(vma);
	mm->total_vm += len >> PAGE_SHIFT;
	mm->data_vm += len >> PAGE_SHIFT;
	if (flags & VM_LOCKED)
		mm->locked_vm += (len >> PAGE_SHIFT);
	vma->vm_flags |= VM_SOFTDIRTY;
	return 0;
}