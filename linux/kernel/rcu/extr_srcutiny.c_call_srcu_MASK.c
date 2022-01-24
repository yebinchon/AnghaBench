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
struct srcu_struct {TYPE_1__ srcu_work; int /*<<< orphan*/  srcu_gp_running; struct rcu_head** srcu_cb_tail; } ;
struct rcu_head {struct rcu_head* next; int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  rcu_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  srcu_boot_list ; 
 int /*<<< orphan*/  srcu_init_done ; 

void FUNC7(struct srcu_struct *ssp, struct rcu_head *rhp,
	       rcu_callback_t func)
{
	unsigned long flags;

	rhp->func = func;
	rhp->next = NULL;
	FUNC5(flags);
	*ssp->srcu_cb_tail = rhp;
	ssp->srcu_cb_tail = &rhp->next;
	FUNC4(flags);
	if (!FUNC0(ssp->srcu_gp_running)) {
		if (FUNC1(srcu_init_done))
			FUNC6(&ssp->srcu_work);
		else if (FUNC3(&ssp->srcu_work.entry))
			FUNC2(&ssp->srcu_work.entry, &srcu_boot_list);
	}
}