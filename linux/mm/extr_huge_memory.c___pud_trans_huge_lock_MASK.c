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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pud_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

spinlock_t *FUNC5(pud_t *pud, struct vm_area_struct *vma)
{
	spinlock_t *ptl;

	ptl = FUNC2(vma->vm_mm, pud);
	if (FUNC0(FUNC3(*pud) || FUNC1(*pud)))
		return ptl;
	FUNC4(ptl);
	return NULL;
}