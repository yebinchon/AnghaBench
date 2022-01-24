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
struct mcs_spinlock {int /*<<< orphan*/  locked; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 struct mcs_spinlock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mcs_spinlock* FUNC2 (struct mcs_spinlock**,struct mcs_spinlock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline
void FUNC5(struct mcs_spinlock **lock, struct mcs_spinlock *node)
{
	struct mcs_spinlock *next = FUNC0(node->next);

	if (FUNC4(!next)) {
		/*
		 * Release the lock by setting it to NULL
		 */
		if (FUNC4(FUNC2(lock, node, NULL) == node))
			return;
		/* Wait until the next pointer is set */
		while (!(next = FUNC0(node->next)))
			FUNC3();
	}

	/* Pass lock to next waiter. */
	FUNC1(&next->locked);
}