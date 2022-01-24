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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC1 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 

pte_t FUNC3(struct vm_area_struct *vma, unsigned long address,
		       pte_t *ptep)
{
	struct mm_struct *mm = (vma)->vm_mm;
	pte_t pte;
	pte = FUNC2(mm, address, ptep);
	if (FUNC1(mm, pte))
		FUNC0(vma, address);
	return pte;
}