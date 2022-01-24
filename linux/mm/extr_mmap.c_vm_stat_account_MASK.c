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
typedef  int /*<<< orphan*/  vm_flags_t ;
struct mm_struct {long total_vm; long exec_vm; long stack_vm; long data_vm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct mm_struct *mm, vm_flags_t flags, long npages)
{
	mm->total_vm += npages;

	if (FUNC1(flags))
		mm->exec_vm += npages;
	else if (FUNC2(flags))
		mm->stack_vm += npages;
	else if (FUNC0(flags))
		mm->data_vm += npages;
}