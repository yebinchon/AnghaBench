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
struct mm_struct {int /*<<< orphan*/  user_ns; } ;
struct TYPE_2__ {struct mm_struct* active_mm; struct mm_struct* mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 struct mm_struct init_mm ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct mm_struct *mm)
{
	FUNC0(mm == &init_mm);
	FUNC1(mm == current->mm);
	FUNC1(mm == current->active_mm);
	FUNC5(mm);
	FUNC3(mm);
	FUNC6(mm);
	FUNC2(mm);
	FUNC7(mm->user_ns);
	FUNC4(mm);
}