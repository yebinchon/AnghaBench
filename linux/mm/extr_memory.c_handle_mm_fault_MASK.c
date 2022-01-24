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
typedef  int vm_fault_t ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 unsigned int FAULT_FLAG_INSTRUCTION ; 
 unsigned int FAULT_FLAG_REMOTE ; 
 unsigned int FAULT_FLAG_USER ; 
 unsigned int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  PGFAULT ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_SIGSEGV ; 
 int FUNC0 (struct vm_area_struct*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int FUNC6 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

vm_fault_t FUNC13(struct vm_area_struct *vma, unsigned long address,
		unsigned int flags)
{
	vm_fault_t ret;

	FUNC1(TASK_RUNNING);

	FUNC5(PGFAULT);
	FUNC4(vma->vm_mm, PGFAULT);

	/* do counter updates before entering really critical section. */
	FUNC3(current);

	if (!FUNC2(vma, flags & FAULT_FLAG_WRITE,
					    flags & FAULT_FLAG_INSTRUCTION,
					    flags & FAULT_FLAG_REMOTE))
		return VM_FAULT_SIGSEGV;

	/*
	 * Enable the memcg OOM handling for faults triggered in user
	 * space.  Kernel faults are handled more gracefully.
	 */
	if (flags & FAULT_FLAG_USER)
		FUNC8();

	if (FUNC12(FUNC7(vma)))
		ret = FUNC6(vma->vm_mm, vma, address, flags);
	else
		ret = FUNC0(vma, address, flags);

	if (flags & FAULT_FLAG_USER) {
		FUNC9();
		/*
		 * The task may have entered a memcg OOM situation but
		 * if the allocation error was handled gracefully (no
		 * VM_FAULT_OOM), there is no need to kill anything.
		 * Just clean up the OOM state peacefully.
		 */
		if (FUNC11(current) && !(ret & VM_FAULT_OOM))
			FUNC10(false);
	}

	return ret;
}