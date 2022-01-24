#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xol_area {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  xol_area; } ;
struct mm_struct {TYPE_1__ uprobes_state; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;

/* Variables and functions */
 struct xol_area* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 

__attribute__((used)) static struct xol_area *FUNC2(void)
{
	struct mm_struct *mm = current->mm;
	struct xol_area *area;

	if (!mm->uprobes_state.xol_area)
		FUNC1(0);

	/* Pairs with xol_add_vma() smp_store_release() */
	area = FUNC0(mm->uprobes_state.xol_area); /* ^^^ */
	return area;
}