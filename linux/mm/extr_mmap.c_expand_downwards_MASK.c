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
struct vm_area_struct {int vm_flags; unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int /*<<< orphan*/  anon_vma; struct vm_area_struct* vm_prev; struct mm_struct* vm_mm; } ;
struct mm_struct {unsigned long locked_vm; int /*<<< orphan*/  page_table_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int VM_EXEC ; 
 int VM_GROWSDOWN ; 
 int VM_LOCKED ; 
 int VM_READ ; 
 int VM_WRITE ; 
 int FUNC0 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*,int) ; 
 unsigned long mmap_min_addr ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned long stack_guard_gap ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_area_struct*) ; 

int FUNC14(struct vm_area_struct *vma,
				   unsigned long address)
{
	struct mm_struct *mm = vma->vm_mm;
	struct vm_area_struct *prev;
	int error = 0;

	address &= PAGE_MASK;
	if (address < mmap_min_addr)
		return -EPERM;

	/* Enforce stack_guard_gap */
	prev = vma->vm_prev;
	/* Check that both stack segments have the same anon_vma? */
	if (prev && !(prev->vm_flags & VM_GROWSDOWN) &&
			(prev->vm_flags & (VM_WRITE|VM_READ|VM_EXEC))) {
		if (address - prev->vm_end < stack_guard_gap)
			return -ENOMEM;
	}

	/* We must make sure the anon_vma is allocated. */
	if (FUNC10(FUNC4(vma)))
		return -ENOMEM;

	/*
	 * vma->vm_start/vm_end cannot change under us because the caller
	 * is required to hold the mmap_sem in read mode.  We need the
	 * anon_vma lock to serialize against concurrent expand_stacks.
	 */
	FUNC3(vma->anon_vma);

	/* Somebody else might have raced and expanded it already */
	if (address < vma->vm_start) {
		unsigned long size, grow;

		size = vma->vm_end - address;
		grow = (vma->vm_start - address) >> PAGE_SHIFT;

		error = -ENOMEM;
		if (grow <= vma->vm_pgoff) {
			error = FUNC0(vma, size, grow);
			if (!error) {
				/*
				 * vma_gap_update() doesn't support concurrent
				 * updates, but we only hold a shared mmap_sem
				 * lock here, so we need to protect against
				 * concurrent vma expansions.
				 * anon_vma_lock_write() doesn't help here, as
				 * we don't guarantee that all growable vmas
				 * in a mm share the same root anon vma.
				 * So, we reuse mm->page_table_lock to guard
				 * against concurrent vma expansions.
				 */
				FUNC8(&mm->page_table_lock);
				if (vma->vm_flags & VM_LOCKED)
					mm->locked_vm += grow;
				FUNC12(mm, vma->vm_flags, grow);
				FUNC2(vma);
				vma->vm_start = address;
				vma->vm_pgoff -= grow;
				FUNC1(vma);
				FUNC13(vma);
				FUNC9(&mm->page_table_lock);

				FUNC7(vma);
			}
		}
	}
	FUNC5(vma->anon_vma);
	FUNC6(vma, vma->vm_flags);
	FUNC11(mm);
	return error;
}