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
struct rcu_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  barrier_sequence; int /*<<< orphan*/  barrier_completion; int /*<<< orphan*/  barrier_cpu_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ rcu_state ; 

__attribute__((used)) static void FUNC4(struct rcu_head *rhp)
{
	if (FUNC1(&rcu_state.barrier_cpu_count)) {
		FUNC3(FUNC0("LastCB"), -1,
				   rcu_state.barrier_sequence);
		FUNC2(&rcu_state.barrier_completion);
	} else {
		FUNC3(FUNC0("CB"), -1, rcu_state.barrier_sequence);
	}
}