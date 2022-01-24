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
struct optimistic_spin_queue {int /*<<< orphan*/  tail; } ;
struct optimistic_spin_node {int /*<<< orphan*/  locked; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  OSQ_UNLOCKED_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  osq_node ; 
 struct optimistic_spin_node* FUNC4 (struct optimistic_spin_queue*,struct optimistic_spin_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct optimistic_spin_node* FUNC6 (int /*<<< orphan*/ *) ; 
 struct optimistic_spin_node* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC8(struct optimistic_spin_queue *lock)
{
	struct optimistic_spin_node *node, *next;
	int curr = FUNC2(FUNC5());

	/*
	 * Fast path for the uncontended case.
	 */
	if (FUNC3(FUNC1(&lock->tail, curr,
					  OSQ_UNLOCKED_VAL) == curr))
		return;

	/*
	 * Second most likely case.
	 */
	node = FUNC6(&osq_node);
	next = FUNC7(&node->next, NULL);
	if (next) {
		FUNC0(next->locked, 1);
		return;
	}

	next = FUNC4(lock, node, NULL);
	if (next)
		FUNC0(next->locked, 1);
}