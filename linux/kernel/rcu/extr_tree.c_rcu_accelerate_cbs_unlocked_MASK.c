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
struct rcu_node {int dummy; } ;
struct rcu_data {int /*<<< orphan*/  cblist; int /*<<< orphan*/  gp_seq_needed; int /*<<< orphan*/  gpwrap; } ;
struct TYPE_2__ {int /*<<< orphan*/  gp_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct rcu_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcu_node*) ; 
 int FUNC3 (struct rcu_node*,struct rcu_data*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct rcu_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__ rcu_state ; 

__attribute__((used)) static void FUNC8(struct rcu_node *rnp,
					struct rcu_data *rdp)
{
	unsigned long c;
	bool needwake;

	FUNC5(rdp);
	c = FUNC7(&rcu_state.gp_seq);
	if (!rdp->gpwrap && FUNC0(rdp->gp_seq_needed, c)) {
		/* Old request still live, so mark recent callbacks. */
		(void)FUNC6(&rdp->cblist, c);
		return;
	}
	FUNC1(rnp); /* irqs already disabled. */
	needwake = FUNC3(rnp, rdp);
	FUNC2(rnp); /* irqs remain disabled. */
	if (needwake)
		FUNC4();
}