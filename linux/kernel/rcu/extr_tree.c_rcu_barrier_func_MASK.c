#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  func; } ;
struct rcu_data {TYPE_2__ barrier_head; int /*<<< orphan*/  cblist; } ;
struct TYPE_5__ {int /*<<< orphan*/  barrier_sequence; int /*<<< orphan*/  barrier_cpu_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct rcu_data* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu_barrier_callback ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_data ; 
 int /*<<< orphan*/  FUNC7 (struct rcu_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rcu_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct rcu_data*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ rcu_state ; 

__attribute__((used)) static void FUNC11(void *unused)
{
	struct rcu_data *rdp = FUNC5(&rcu_data);

	FUNC6(FUNC0("IRQ"), -1, rcu_state.barrier_sequence);
	rdp->barrier_head.func = rcu_barrier_callback;
	FUNC3(&rdp->barrier_head);
	FUNC8(rdp);
	FUNC1(!FUNC7(rdp, NULL, jiffies));
	if (FUNC10(&rdp->cblist, &rdp->barrier_head, 0)) {
		FUNC2(&rcu_state.barrier_cpu_count);
	} else {
		FUNC4(&rdp->barrier_head);
		FUNC6(FUNC0("IRQNQ"), -1,
				   rcu_state.barrier_sequence);
	}
	FUNC9(rdp);
}