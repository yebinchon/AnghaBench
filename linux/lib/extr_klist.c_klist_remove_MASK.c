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
struct klist_waiter {scalar_t__ woken; int /*<<< orphan*/  list; int /*<<< orphan*/  process; struct klist_node* node; } ;
struct klist_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct klist_node*) ; 
 int /*<<< orphan*/  klist_remove_lock ; 
 int /*<<< orphan*/  klist_remove_waiters ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct klist_node *n)
{
	struct klist_waiter waiter;

	waiter.node = n;
	waiter.process = current;
	waiter.woken = 0;
	FUNC5(&klist_remove_lock);
	FUNC2(&waiter.list, &klist_remove_waiters);
	FUNC6(&klist_remove_lock);

	FUNC1(n);

	for (;;) {
		FUNC4(TASK_UNINTERRUPTIBLE);
		if (waiter.woken)
			break;
		FUNC3();
	}
	FUNC0(TASK_RUNNING);
}