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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; unsigned long vm_pgoff; struct file* vm_file; int /*<<< orphan*/  vm_page_prot; } ;
struct rb_node {int dummy; } ;
struct mm_struct {unsigned long locked_vm; } ;
struct list_head {int dummy; } ;
struct file {int /*<<< orphan*/  f_mapping; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long ENOMEM ; 
 int /*<<< orphan*/  NULL_VM_UFFD_CTX ; 
 unsigned long PAGE_SHIFT ; 
 int VM_ACCOUNT ; 
 int VM_DENYWRITE ; 
 int VM_LOCKED ; 
 int VM_LOCKED_CLEAR_MASK ; 
 int VM_SHARED ; 
 int VM_SOFTDIRTY ; 
 int VM_SPECIAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct file*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int FUNC3 (struct file*,struct vm_area_struct*) ; 
 unsigned long FUNC4 (struct mm_struct*,unsigned long,unsigned long) ; 
 TYPE_1__* current ; 
 int FUNC5 (struct file*) ; 
 scalar_t__ FUNC6 (struct mm_struct*,unsigned long,unsigned long,struct list_head*) ; 
 scalar_t__ FUNC7 (struct mm_struct*,unsigned long,unsigned long,struct vm_area_struct**,struct rb_node***,struct rb_node**) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 struct file* FUNC9 (struct file*) ; 
 struct vm_area_struct* FUNC10 (struct mm_struct*) ; 
 scalar_t__ FUNC11 (struct vm_area_struct*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mm_struct*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_area_struct*) ; 
 scalar_t__ FUNC16 (struct mm_struct*,unsigned long) ; 
 int FUNC17 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC18 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (struct vm_area_struct*) ; 
 struct vm_area_struct* FUNC20 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC21 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (struct mm_struct*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (unsigned long) ; 
 scalar_t__ FUNC25 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC26 (struct mm_struct*,struct vm_area_struct*,struct vm_area_struct*,struct rb_node**,struct rb_node*) ; 
 struct vm_area_struct* FUNC27 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,int,int /*<<< orphan*/ *,struct file*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC29 (struct vm_area_struct*) ; 

unsigned long FUNC30(struct file *file, unsigned long addr,
		unsigned long len, vm_flags_t vm_flags, unsigned long pgoff,
		struct list_head *uf)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma, *prev;
	int error;
	struct rb_node **rb_link, *rb_parent;
	unsigned long charged = 0;

	/* Check against address space limit. */
	if (!FUNC14(mm, vm_flags, len >> PAGE_SHIFT)) {
		unsigned long nr_pages;

		/*
		 * MAP_FIXED may remove pages of mappings that intersects with
		 * requested mapping. Account for the pages it would unmap.
		 */
		nr_pages = FUNC4(mm, addr, addr + len);

		if (!FUNC14(mm, vm_flags,
					(len >> PAGE_SHIFT) - nr_pages))
			return -ENOMEM;
	}

	/* Clear old maps */
	while (FUNC7(mm, addr, addr + len, &prev, &rb_link,
			      &rb_parent)) {
		if (FUNC6(mm, addr, len, uf))
			return -ENOMEM;
	}

	/*
	 * Private writable mapping: check memory availability
	 */
	if (FUNC1(file, vm_flags)) {
		charged = len >> PAGE_SHIFT;
		if (FUNC16(mm, charged))
			return -ENOMEM;
		vm_flags |= VM_ACCOUNT;
	}

	/*
	 * Can we just expand an old mapping?
	 */
	vma = FUNC27(mm, prev, addr, addr + len, vm_flags,
			NULL, file, pgoff, NULL, NULL_VM_UFFD_CTX);
	if (vma)
		goto out;

	/*
	 * Determine the object being mapped and call the appropriate
	 * specific mapper. the address has already been validated, but
	 * not unmapped, but the maps are removed from the list.
	 */
	vma = FUNC20(mm);
	if (!vma) {
		error = -ENOMEM;
		goto unacct_error;
	}

	vma->vm_start = addr;
	vma->vm_end = addr + len;
	vma->vm_flags = vm_flags;
	vma->vm_page_prot = FUNC22(vm_flags);
	vma->vm_pgoff = pgoff;

	if (file) {
		if (vm_flags & VM_DENYWRITE) {
			error = FUNC5(file);
			if (error)
				goto free_vma;
		}
		if (vm_flags & VM_SHARED) {
			error = FUNC12(file->f_mapping);
			if (error)
				goto allow_write_and_free_vma;
		}

		/* ->mmap() can change vma->vm_file, but must guarantee that
		 * vma_link() below can deny write-access if VM_DENYWRITE is set
		 * and map writably if VM_SHARED is set. This usually means the
		 * new file must not have been exposed to user-space, yet.
		 */
		vma->vm_file = FUNC9(file);
		error = FUNC3(file, vma);
		if (error)
			goto unmap_and_free_vma;

		/* Can addr have changed??
		 *
		 * Answer: Yes, several device drivers can do it in their
		 *         f_op->mmap method. -DaveM
		 * Bug: If addr is changed, prev, rb_link, rb_parent should
		 *      be updated for vma_link()
		 */
		FUNC0(addr != vma->vm_start);

		addr = vma->vm_start;
		vm_flags = vma->vm_flags;
	} else if (vm_flags & VM_SHARED) {
		error = FUNC17(vma);
		if (error)
			goto free_vma;
	} else {
		FUNC28(vma);
	}

	FUNC26(mm, vma, prev, rb_link, rb_parent);
	/* Once vma denies write, undo our temporary denial count */
	if (file) {
		if (vm_flags & VM_SHARED)
			FUNC13(file->f_mapping);
		if (vm_flags & VM_DENYWRITE)
			FUNC2(file);
	}
	file = vma->vm_file;
out:
	FUNC15(vma);

	FUNC23(mm, vm_flags, len >> PAGE_SHIFT);
	if (vm_flags & VM_LOCKED) {
		if ((vm_flags & VM_SPECIAL) || FUNC25(vma) ||
					FUNC11(vma) ||
					vma == FUNC10(current->mm))
			vma->vm_flags &= VM_LOCKED_CLEAR_MASK;
		else
			mm->locked_vm += (len >> PAGE_SHIFT);
	}

	if (file)
		FUNC19(vma);

	/*
	 * New (or expanded) vma always get soft dirty status.
	 * Otherwise user-space soft-dirty page tracker won't
	 * be able to distinguish situation when vma area unmapped,
	 * then new mapped in-place (which must be aimed as
	 * a completely new data area).
	 */
	vma->vm_flags |= VM_SOFTDIRTY;

	FUNC29(vma);

	return addr;

unmap_and_free_vma:
	vma->vm_file = NULL;
	FUNC8(file);

	/* Undo any partial mapping done by a device driver. */
	FUNC18(mm, vma, prev, vma->vm_start, vma->vm_end);
	charged = 0;
	if (vm_flags & VM_SHARED)
		FUNC13(file->f_mapping);
allow_write_and_free_vma:
	if (vm_flags & VM_DENYWRITE)
		FUNC2(file);
free_vma:
	FUNC21(vma);
unacct_error:
	if (charged)
		FUNC24(charged);
	return error;
}