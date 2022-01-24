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
typedef  int /*<<< orphan*/  vm_flags_t ;
struct mm_struct {scalar_t__ total_vm; unsigned long data_vm; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  RLIMIT_AS ; 
 int /*<<< orphan*/  RLIMIT_DATA ; 
 TYPE_1__* current ; 
 scalar_t__ ignore_rlimit_data ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,scalar_t__,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(struct mm_struct *mm, vm_flags_t flags, unsigned long npages)
{
	if (mm->total_vm + npages > FUNC2(RLIMIT_AS) >> PAGE_SHIFT)
		return false;

	if (FUNC0(flags) &&
	    mm->data_vm + npages > FUNC2(RLIMIT_DATA) >> PAGE_SHIFT) {
		/* Workaround for Valgrind */
		if (FUNC2(RLIMIT_DATA) == 0 &&
		    mm->data_vm + npages <= FUNC3(RLIMIT_DATA) >> PAGE_SHIFT)
			return true;

		FUNC1("%s (%d): VmData %lu exceed data ulimit %lu. Update limits%s.\n",
			     current->comm, current->pid,
			     (mm->data_vm + npages) << PAGE_SHIFT,
			     FUNC2(RLIMIT_DATA),
			     ignore_rlimit_data ? "" : " or use boot option ignore_rlimit_data");

		if (!ignore_rlimit_data)
			return false;
	}

	return true;
}