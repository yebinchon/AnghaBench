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
struct vm_area_struct {TYPE_1__* vm_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  mm_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMF_HAS_UPROBES ; 
 int /*<<< orphan*/  MMF_RECALC_UPROBES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,int) ; 
 scalar_t__ FUNC5 (struct vm_area_struct*,unsigned long,unsigned long) ; 

void FUNC6(struct vm_area_struct *vma, unsigned long start, unsigned long end)
{
	if (FUNC1() || !FUNC4(vma, false))
		return;

	if (!FUNC0(&vma->vm_mm->mm_users)) /* called by mmput() ? */
		return;

	if (!FUNC3(MMF_HAS_UPROBES, &vma->vm_mm->flags) ||
	     FUNC3(MMF_RECALC_UPROBES, &vma->vm_mm->flags))
		return;

	if (FUNC5(vma, start, end))
		FUNC2(MMF_RECALC_UPROBES, &vma->vm_mm->flags);
}