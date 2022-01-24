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
struct xol_area {struct xol_area* bitmap; int /*<<< orphan*/ * pages; } ;
struct TYPE_2__ {struct xol_area* xol_area; } ;
struct mm_struct {TYPE_1__ uprobes_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  delayed_uprobe_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct xol_area*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct mm_struct *mm)
{
	struct xol_area *area = mm->uprobes_state.xol_area;

	FUNC2(&delayed_uprobe_lock);
	FUNC0(NULL, mm);
	FUNC3(&delayed_uprobe_lock);

	if (!area)
		return;

	FUNC4(area->pages[0]);
	FUNC1(area->bitmap);
	FUNC1(area);
}