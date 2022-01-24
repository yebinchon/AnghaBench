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
struct rcu_node {int /*<<< orphan*/  gp_seq; int /*<<< orphan*/  gp_seq_needed; } ;
struct rcu_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_data ; 
 struct rcu_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rcu_node*,struct rcu_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct rcu_node *rnp)
{
	bool needmore;
	struct rcu_data *rdp = FUNC2(&rcu_data);

	needmore = FUNC1(rnp->gp_seq, rnp->gp_seq_needed);
	if (!needmore)
		rnp->gp_seq_needed = rnp->gp_seq; /* Avoid counter wrap. */
	FUNC3(rnp, rdp, rnp->gp_seq,
			  needmore ? FUNC0("CleanupMore") : FUNC0("Cleanup"));
	return needmore;
}