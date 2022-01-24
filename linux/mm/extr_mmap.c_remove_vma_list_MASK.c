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
struct vm_area_struct {int vm_flags; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int VM_ACCOUNT ; 
 struct vm_area_struct* FUNC0 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,int,long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 long FUNC5 (struct vm_area_struct*) ; 

__attribute__((used)) static void FUNC6(struct mm_struct *mm, struct vm_area_struct *vma)
{
	unsigned long nr_accounted = 0;

	/* Update high watermark before we lower total_vm */
	FUNC1(mm);
	do {
		long nrpages = FUNC5(vma);

		if (vma->vm_flags & VM_ACCOUNT)
			nr_accounted += nrpages;
		FUNC3(mm, vma->vm_flags, -nrpages);
		vma = FUNC0(vma);
	} while (vma);
	FUNC4(nr_accounted);
	FUNC2(mm);
}