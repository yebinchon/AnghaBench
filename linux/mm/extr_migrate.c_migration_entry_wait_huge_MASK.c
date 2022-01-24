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
struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct mm_struct*,int /*<<< orphan*/ *) ; 

void FUNC3(struct vm_area_struct *vma,
		struct mm_struct *mm, pte_t *pte)
{
	spinlock_t *ptl = FUNC2(FUNC1(vma), mm, pte);
	FUNC0(mm, pte, ptl);
}