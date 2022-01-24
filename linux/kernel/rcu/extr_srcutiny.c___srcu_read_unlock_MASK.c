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
struct srcu_struct {int* srcu_lock_nesting; int /*<<< orphan*/  srcu_wq; int /*<<< orphan*/  srcu_gp_waiting; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct srcu_struct *ssp, int idx)
{
	int newval = ssp->srcu_lock_nesting[idx] - 1;

	FUNC1(ssp->srcu_lock_nesting[idx], newval);
	if (!newval && FUNC0(ssp->srcu_gp_waiting))
		FUNC2(&ssp->srcu_wq);
}