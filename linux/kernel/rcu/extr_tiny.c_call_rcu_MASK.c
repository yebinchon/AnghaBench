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
struct rcu_head {struct rcu_head* next; int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  rcu_callback_t ;
struct TYPE_2__ {struct rcu_head** curtail; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct rcu_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 TYPE_1__ rcu_ctrlblk ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct rcu_head *head, rcu_callback_t func)
{
	unsigned long flags;

	FUNC0(head);
	head->func = func;
	head->next = NULL;

	FUNC3(flags);
	*rcu_ctrlblk.curtail = head;
	rcu_ctrlblk.curtail = &head->next;
	FUNC2(flags);

	if (FUNC5(FUNC1(current))) {
		/* force scheduling for rcu_qs() */
		FUNC4(0);
	}
}