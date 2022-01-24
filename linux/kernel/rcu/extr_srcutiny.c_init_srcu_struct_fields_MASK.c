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
struct TYPE_2__ {int /*<<< orphan*/  entry; } ;
struct srcu_struct {int srcu_gp_running; int srcu_gp_waiting; TYPE_1__ srcu_work; scalar_t__ srcu_idx; int /*<<< orphan*/ * srcu_cb_head; int /*<<< orphan*/ ** srcu_cb_tail; int /*<<< orphan*/  srcu_wq; scalar_t__* srcu_lock_nesting; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  srcu_drive_gp ; 

__attribute__((used)) static int FUNC3(struct srcu_struct *ssp)
{
	ssp->srcu_lock_nesting[0] = 0;
	ssp->srcu_lock_nesting[1] = 0;
	FUNC2(&ssp->srcu_wq);
	ssp->srcu_cb_head = NULL;
	ssp->srcu_cb_tail = &ssp->srcu_cb_head;
	ssp->srcu_gp_running = false;
	ssp->srcu_gp_waiting = false;
	ssp->srcu_idx = 0;
	FUNC1(&ssp->srcu_work, srcu_drive_gp);
	FUNC0(&ssp->srcu_work.entry);
	return 0;
}