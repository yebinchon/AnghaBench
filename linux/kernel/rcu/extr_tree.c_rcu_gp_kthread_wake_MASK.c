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
struct TYPE_2__ {scalar_t__ gp_kthread; int /*<<< orphan*/  gp_wq; int /*<<< orphan*/  gp_seq; int /*<<< orphan*/  gp_wake_seq; int /*<<< orphan*/  gp_wake_time; int /*<<< orphan*/  gp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  jiffies ; 
 TYPE_1__ rcu_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	if ((current == rcu_state.gp_kthread &&
	     !FUNC2() && !FUNC3()) ||
	    !FUNC0(rcu_state.gp_flags) ||
	    !rcu_state.gp_kthread)
		return;
	FUNC1(rcu_state.gp_wake_time, jiffies);
	FUNC1(rcu_state.gp_wake_seq, FUNC0(rcu_state.gp_seq));
	FUNC4(&rcu_state.gp_wq);
}