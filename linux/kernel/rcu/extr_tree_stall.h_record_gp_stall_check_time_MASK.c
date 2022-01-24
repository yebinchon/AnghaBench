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
struct TYPE_2__ {unsigned long gp_start; unsigned long jiffies_resched; int /*<<< orphan*/  n_force_qs; int /*<<< orphan*/  n_force_qs_gpstart; int /*<<< orphan*/  jiffies_stall; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 () ; 
 TYPE_1__ rcu_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned long j = jiffies;
	unsigned long j1;

	rcu_state.gp_start = j;
	j1 = FUNC1();
	/* Record ->gp_start before ->jiffies_stall. */
	FUNC2(&rcu_state.jiffies_stall, j + j1); /* ^^^ */
	rcu_state.jiffies_resched = j + j1 / 2;
	rcu_state.n_force_qs_gpstart = FUNC0(rcu_state.n_force_qs);
}