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
struct rcu_node {int /*<<< orphan*/  gp_seq; } ;
struct rcu_data {int /*<<< orphan*/  cblist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rcu_node*) ; 
 int FUNC1 (struct rcu_node*,struct rcu_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcu_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct rcu_node *rnp, struct rcu_data *rdp)
{
	FUNC2(rdp);
	FUNC0(rnp);

	/* If no pending (not yet ready to invoke) callbacks, nothing to do. */
	if (!FUNC4(&rdp->cblist))
		return false;

	/*
	 * Find all callbacks whose ->gp_seq numbers indicate that they
	 * are ready to invoke, and put them into the RCU_DONE_TAIL sublist.
	 */
	FUNC3(&rdp->cblist, rnp->gp_seq);

	/* Classify any remaining callbacks. */
	return FUNC1(rnp, rdp);
}