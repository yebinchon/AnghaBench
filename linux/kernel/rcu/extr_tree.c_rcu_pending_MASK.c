#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rcu_node {int /*<<< orphan*/  gp_seq; } ;
struct TYPE_3__ {int /*<<< orphan*/  norm; } ;
struct TYPE_4__ {TYPE_1__ b; } ;
struct rcu_data {scalar_t__ gp_seq; int /*<<< orphan*/  gpwrap; int /*<<< orphan*/  cblist; TYPE_2__ cpu_no_qs; scalar_t__ core_needs_qs; struct rcu_node* mynode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RCU_NOCB_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCU_NEXT_READY_TAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rcu_data*) ; 
 int /*<<< orphan*/  rcu_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct rcu_data*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 struct rcu_data* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(void)
{
	struct rcu_data *rdp = FUNC11(&rcu_data);
	struct rcu_node *rnp = rdp->mynode;

	/* Check for CPU stalls, if enabled. */
	FUNC2(rdp);

	/* Does this CPU need a deferred NOCB wakeup? */
	if (FUNC4(rdp))
		return 1;

	/* Is this CPU a NO_HZ_FULL CPU that should ignore RCU? */
	if (FUNC5())
		return 0;

	/* Is the RCU core waiting for a quiescent state from this CPU? */
	if (rdp->core_needs_qs && !rdp->cpu_no_qs.b.norm)
		return 1;

	/* Does this CPU have callbacks ready to invoke? */
	if (FUNC8(&rdp->cblist))
		return 1;

	/* Has RCU gone idle with this CPU needing another grace period? */
	if (!FUNC3() &&
	    FUNC6(&rdp->cblist) &&
	    (!FUNC0(CONFIG_RCU_NOCB_CPU) ||
	     !FUNC7(&rdp->cblist)) &&
	    !FUNC9(&rdp->cblist, RCU_NEXT_READY_TAIL))
		return 1;

	/* Have RCU grace period completed or started?  */
	if (FUNC10(&rnp->gp_seq) != rdp->gp_seq ||
	    FUNC12(FUNC1(rdp->gpwrap))) /* outside lock */
		return 1;

	/* nothing to do */
	return 0;
}