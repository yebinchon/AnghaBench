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
struct optimistic_spin_node {int cpu; struct optimistic_spin_node* next; struct optimistic_spin_node* prev; struct optimistic_spin_node* locked; } ;

/* Variables and functions */
 int OSQ_UNLOCKED_VAL ; 
 struct optimistic_spin_node* FUNC0 (struct optimistic_spin_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct optimistic_spin_node*,struct optimistic_spin_node*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct optimistic_spin_node* FUNC3 (struct optimistic_spin_node**,struct optimistic_spin_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct optimistic_spin_node* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct optimistic_spin_node*) ; 
 int /*<<< orphan*/  osq_node ; 
 struct optimistic_spin_node* FUNC9 (struct optimistic_spin_queue*,struct optimistic_spin_node*,struct optimistic_spin_node*) ; 
 scalar_t__ FUNC10 (struct optimistic_spin_node**) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct optimistic_spin_node* FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

bool FUNC15(struct optimistic_spin_queue *lock)
{
	struct optimistic_spin_node *node = FUNC13(&osq_node);
	struct optimistic_spin_node *prev, *next;
	int curr = FUNC6(FUNC11());
	int old;

	node->locked = 0;
	node->next = NULL;
	node->cpu = curr;

	/*
	 * We need both ACQUIRE (pairs with corresponding RELEASE in
	 * unlock() uncontended, or fastpath) and RELEASE (to publish
	 * the node fields we just initialised) semantics when updating
	 * the lock tail.
	 */
	old = FUNC2(&lock->tail, curr);
	if (old == OSQ_UNLOCKED_VAL)
		return true;

	prev = FUNC5(old);
	node->prev = prev;

	/*
	 * osq_lock()			unqueue
	 *
	 * node->prev = prev		osq_wait_next()
	 * WMB				MB
	 * prev->next = node		next->prev = prev // unqueue-C
	 *
	 * Here 'node->prev' and 'next->prev' are the same variable and we need
	 * to ensure these stores happen in-order to avoid corrupting the list.
	 */
	FUNC12();

	FUNC1(prev->next, node);

	/*
	 * Normally @prev is untouchable after the above store; because at that
	 * moment unlock can proceed and wipe the node element from stack.
	 *
	 * However, since our nodes are static per-cpu storage, we're
	 * guaranteed their existence -- this allows us to apply
	 * cmpxchg in an attempt to undo our queueing.
	 */

	while (!FUNC0(node->locked)) {
		/*
		 * If we need to reschedule bail... so we can block.
		 * Use vcpu_is_preempted() to avoid waiting for a preempted
		 * lock holder:
		 */
		if (FUNC7() || FUNC14(FUNC8(node->prev)))
			goto unqueue;

		FUNC4();
	}
	return true;

unqueue:
	/*
	 * Step - A  -- stabilize @prev
	 *
	 * Undo our @prev->next assignment; this will make @prev's
	 * unlock()/unqueue() wait for a next pointer since @lock points to us
	 * (or later).
	 */

	for (;;) {
		if (prev->next == node &&
		    FUNC3(&prev->next, node, NULL) == node)
			break;

		/*
		 * We can only fail the cmpxchg() racing against an unlock(),
		 * in which case we should observe @node->locked becomming
		 * true.
		 */
		if (FUNC10(&node->locked))
			return true;

		FUNC4();

		/*
		 * Or we race against a concurrent unqueue()'s step-B, in which
		 * case its step-C will write us a new @node->prev pointer.
		 */
		prev = FUNC0(node->prev);
	}

	/*
	 * Step - B -- stabilize @next
	 *
	 * Similar to unlock(), wait for @node->next or move @lock from @node
	 * back to @prev.
	 */

	next = FUNC9(lock, node, prev);
	if (!next)
		return false;

	/*
	 * Step - C -- unlink
	 *
	 * @prev is stable because its still waiting for a new @prev->next
	 * pointer, @next is stable because our @node->next pointer is NULL and
	 * it will wait in Step-A.
	 */

	FUNC1(next->prev, prev);
	FUNC1(prev->next, next);

	return false;
}