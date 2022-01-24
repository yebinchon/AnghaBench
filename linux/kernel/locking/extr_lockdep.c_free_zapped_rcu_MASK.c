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
struct rcu_head {int dummy; } ;
struct pending_free {int dummy; } ;
struct TYPE_4__ {int lockdep_recursion; } ;
struct TYPE_3__ {int index; int scheduled; struct pending_free* pf; struct rcu_head rcu_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pending_free*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pending_free*) ; 
 TYPE_2__* current ; 
 TYPE_1__ delayed_free ; 
 int /*<<< orphan*/  lockdep_lock ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(struct rcu_head *ch)
{
	struct pending_free *pf;
	unsigned long flags;

	if (FUNC0(ch != &delayed_free.rcu_head))
		return;

	FUNC6(flags);
	FUNC2(&lockdep_lock);
	current->lockdep_recursion = 1;

	/* closed head */
	pf = delayed_free.pf + (delayed_free.index ^ 1);
	FUNC1(pf);
	delayed_free.scheduled = false;

	/*
	 * If there's anything on the open list, close and start a new callback.
	 */
	FUNC4(delayed_free.pf + delayed_free.index);

	current->lockdep_recursion = 0;
	FUNC3(&lockdep_lock);
	FUNC5(flags);
}