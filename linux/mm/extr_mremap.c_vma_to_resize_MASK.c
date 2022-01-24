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
struct vm_area_struct {unsigned long vm_start; int vm_flags; unsigned long vm_end; scalar_t__ vm_pgoff; } ;
struct mm_struct {unsigned long locked_vm; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct vm_area_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int VM_ACCOUNT ; 
 int VM_DONTEXPAND ; 
 int VM_LOCKED ; 
 int VM_MAYSHARE ; 
 int VM_PFNMAP ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC2 (struct mm_struct*,unsigned long) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mm_struct*,unsigned long) ; 

__attribute__((used)) static struct vm_area_struct *FUNC8(unsigned long addr,
	unsigned long old_len, unsigned long new_len, unsigned long *p)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma = FUNC2(mm, addr);
	unsigned long pgoff;

	if (!vma || vma->vm_start > addr)
		return FUNC0(-EFAULT);

	/*
	 * !old_len is a special case where an attempt is made to 'duplicate'
	 * a mapping.  This makes no sense for private mappings as it will
	 * instead create a fresh/new mapping unrelated to the original.  This
	 * is contrary to the basic idea of mremap which creates new mappings
	 * based on the original.  There are no known use cases for this
	 * behavior.  As a result, fail such attempts.
	 */
	if (!old_len && !(vma->vm_flags & (VM_SHARED | VM_MAYSHARE))) {
		FUNC5("%s (%d): attempted to duplicate a private mapping with mremap.  This is not supported.\n", current->comm, current->pid);
		return FUNC0(-EINVAL);
	}

	if (FUNC3(vma))
		return FUNC0(-EINVAL);

	/* We can't remap across vm area boundaries */
	if (old_len > vma->vm_end - addr)
		return FUNC0(-EFAULT);

	if (new_len == old_len)
		return vma;

	/* Need to be careful about a growing mapping */
	pgoff = (addr - vma->vm_start) >> PAGE_SHIFT;
	pgoff += vma->vm_pgoff;
	if (pgoff + (new_len >> PAGE_SHIFT) < pgoff)
		return FUNC0(-EINVAL);

	if (vma->vm_flags & (VM_DONTEXPAND | VM_PFNMAP))
		return FUNC0(-EFAULT);

	if (vma->vm_flags & VM_LOCKED) {
		unsigned long locked, lock_limit;
		locked = mm->locked_vm << PAGE_SHIFT;
		lock_limit = FUNC6(RLIMIT_MEMLOCK);
		locked += new_len - old_len;
		if (locked > lock_limit && !FUNC1(CAP_IPC_LOCK))
			return FUNC0(-EAGAIN);
	}

	if (!FUNC4(mm, vma->vm_flags,
				(new_len - old_len) >> PAGE_SHIFT))
		return FUNC0(-ENOMEM);

	if (vma->vm_flags & VM_ACCOUNT) {
		unsigned long charged = (new_len - old_len) >> PAGE_SHIFT;
		if (FUNC7(mm, charged))
			return FUNC0(-ENOMEM);
		*p = charged;
	}

	return vma;
}