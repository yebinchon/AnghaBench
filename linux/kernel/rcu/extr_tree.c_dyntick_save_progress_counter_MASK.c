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
struct rcu_data {int /*<<< orphan*/  mynode; int /*<<< orphan*/  cpu; int /*<<< orphan*/  gp_seq; int /*<<< orphan*/  dynticks_snap; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rcu_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rcu_data*) ; 
 TYPE_1__ rcu_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rcu_data *rdp)
{
	rdp->dynticks_snap = FUNC2(rdp);
	if (FUNC1(rdp->dynticks_snap)) {
		FUNC4(rcu_state.name, rdp->gp_seq, rdp->cpu, FUNC0("dti"));
		FUNC3(rdp->mynode, rdp);
		return 1;
	}
	return 0;
}