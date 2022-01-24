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
struct mm_struct {int /*<<< orphan*/  membarrier_state; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  membarrier_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 TYPE_1__ runqueues ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *info)
{
	struct mm_struct *mm = (struct mm_struct *) info;

	if (current->mm != mm)
		return;
	FUNC2(runqueues.membarrier_state,
		       FUNC0(&mm->membarrier_state));
	/*
	 * Issue a memory barrier after setting
	 * MEMBARRIER_STATE_GLOBAL_EXPEDITED in the current runqueue to
	 * guarantee that no memory access following registration is reordered
	 * before registration.
	 */
	FUNC1();
}