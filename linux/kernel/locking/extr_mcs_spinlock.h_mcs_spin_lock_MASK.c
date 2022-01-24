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
struct mcs_spinlock {scalar_t__ locked; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mcs_spinlock*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct mcs_spinlock* FUNC3 (struct mcs_spinlock**,struct mcs_spinlock*) ; 

__attribute__((used)) static inline
void FUNC4(struct mcs_spinlock **lock, struct mcs_spinlock *node)
{
	struct mcs_spinlock *prev;

	/* Init node */
	node->locked = 0;
	node->next   = NULL;

	/*
	 * We rely on the full barrier with global transitivity implied by the
	 * below xchg() to order the initialization stores above against any
	 * observation of @node. And to provide the ACQUIRE ordering associated
	 * with a LOCK primitive.
	 */
	prev = FUNC3(lock, node);
	if (FUNC2(prev == NULL)) {
		/*
		 * Lock acquired, don't need to set node->locked to 1. Threads
		 * only spin on its own node->locked value for lock acquisition.
		 * However, since this thread can immediately acquire the lock
		 * and does not proceed to spin on its own node->locked, this
		 * value won't be used. If a debug mode is needed to
		 * audit lock status, then set node->locked value here.
		 */
		return;
	}
	FUNC0(prev->next, node);

	/* Wait until the lock holder passes the lock down. */
	FUNC1(&node->locked);
}