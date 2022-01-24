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
struct rcu_node {long grpmask; long qsmaskinit; struct rcu_node* parent; int /*<<< orphan*/  wait_blkd_tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcu_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcu_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcu_node*) ; 

__attribute__((used)) static void FUNC4(struct rcu_node *rnp_leaf)
{
	long mask;
	long oldmask;
	struct rcu_node *rnp = rnp_leaf;

	FUNC1(rnp_leaf);
	FUNC0(rnp->wait_blkd_tasks);
	for (;;) {
		mask = rnp->grpmask;
		rnp = rnp->parent;
		if (rnp == NULL)
			return;
		FUNC2(rnp); /* Interrupts already disabled. */
		oldmask = rnp->qsmaskinit;
		rnp->qsmaskinit |= mask;
		FUNC3(rnp); /* Interrupts remain disabled. */
		if (oldmask)
			return;
	}
}