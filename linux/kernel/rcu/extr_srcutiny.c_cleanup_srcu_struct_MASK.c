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
struct srcu_struct {int srcu_gp_running; int srcu_gp_waiting; int srcu_cb_head; int* srcu_cb_tail; int /*<<< orphan*/  srcu_work; scalar_t__* srcu_lock_nesting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct srcu_struct *ssp)
{
	FUNC0(ssp->srcu_lock_nesting[0] || ssp->srcu_lock_nesting[1]);
	FUNC1(&ssp->srcu_work);
	FUNC0(ssp->srcu_gp_running);
	FUNC0(ssp->srcu_gp_waiting);
	FUNC0(ssp->srcu_cb_head);
	FUNC0(&ssp->srcu_cb_head != ssp->srcu_cb_tail);
}