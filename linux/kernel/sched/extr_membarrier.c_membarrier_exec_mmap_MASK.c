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
struct mm_struct {int /*<<< orphan*/  membarrier_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  membarrier_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ runqueues ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct mm_struct *mm)
{
	/*
	 * Issue a memory barrier before clearing membarrier_state to
	 * guarantee that no memory access prior to exec is reordered after
	 * clearing this state.
	 */
	FUNC1();
	FUNC0(&mm->membarrier_state, 0);
	/*
	 * Keep the runqueue membarrier_state in sync with this mm
	 * membarrier_state.
	 */
	FUNC2(runqueues.membarrier_state, 0);
}