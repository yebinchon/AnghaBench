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
struct task_struct {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  gp_state; int /*<<< orphan*/  gp_flags; int /*<<< orphan*/  gp_seq; int /*<<< orphan*/  name; int /*<<< orphan*/  gp_activity; struct task_struct* gp_kthread; } ;

/* Variables and functions */
 int HZ ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ rcu_state ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct task_struct *gpk = rcu_state.gp_kthread;
	unsigned long j;

	j = jiffies - FUNC0(rcu_state.gp_activity);
	if (j > 2 * HZ) {
		FUNC2("%s kthread starved for %ld jiffies! g%ld f%#x %s(%d) ->state=%#lx ->cpu=%d\n",
		       rcu_state.name, j,
		       (long)FUNC3(&rcu_state.gp_seq),
		       FUNC0(rcu_state.gp_flags),
		       FUNC1(rcu_state.gp_state), rcu_state.gp_state,
		       gpk ? gpk->state : ~0, gpk ? FUNC5(gpk) : -1);
		if (gpk) {
			FUNC2("RCU grace-period kthread stack dump:\n");
			FUNC4(gpk);
			FUNC6(gpk);
		}
	}
}