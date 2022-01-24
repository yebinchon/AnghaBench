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
struct vm_area_struct {unsigned long vm_end; } ;

/* Variables and functions */
 unsigned long HPAGE_PMD_MASK ; 
 unsigned long HPAGE_PMD_SIZE ; 
 int FUNC0 (struct vm_area_struct*) ; 
 int FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*) ; 
 scalar_t__ FUNC4 (struct vm_area_struct*) ; 

bool FUNC5(struct vm_area_struct *vma)
{
	/* The addr is used to check if the vma size fits */
	unsigned long addr = (vma->vm_end & HPAGE_PMD_MASK) - HPAGE_PMD_SIZE;

	if (!FUNC2(vma, addr))
		return false;
	if (FUNC3(vma))
		return FUNC0(vma);
	if (FUNC4(vma))
		return FUNC1(vma);

	return false;
}