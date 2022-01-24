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
struct TYPE_2__ {int /*<<< orphan*/  jiffies_kick_kthreads; scalar_t__ gp_kthread; int /*<<< orphan*/  name; int /*<<< orphan*/  gp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_ALL ; 
 scalar_t__ HZ ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  rcu_kick_kthreads ; 
 TYPE_1__ rcu_state ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(void)
{
	unsigned long j;

	if (!rcu_kick_kthreads)
		return;
	j = FUNC0(rcu_state.jiffies_kick_kthreads);
	if (FUNC5(jiffies, j) && rcu_state.gp_kthread &&
	    (FUNC4() || FUNC0(rcu_state.gp_flags))) {
		FUNC1(1, "Kicking %s grace-period kthread\n",
			  rcu_state.name);
		FUNC3(DUMP_ALL);
		FUNC6(rcu_state.gp_kthread);
		FUNC2(rcu_state.jiffies_kick_kthreads, j + HZ);
	}
}