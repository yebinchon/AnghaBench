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
struct rcu_sync {scalar_t__ gp_state; scalar_t__ gp_count; int /*<<< orphan*/  rss_lock; } ;

/* Variables and functions */
 scalar_t__ GP_EXIT ; 
 scalar_t__ GP_IDLE ; 
 scalar_t__ GP_PASSED ; 
 scalar_t__ GP_REPLAY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rcu_sync*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct rcu_sync *rsp)
{
	FUNC1(FUNC0(rsp->gp_state) == GP_IDLE);
	FUNC1(FUNC0(rsp->gp_count) == 0);

	FUNC4(&rsp->rss_lock);
	if (!--rsp->gp_count) {
		if (rsp->gp_state == GP_PASSED) {
			FUNC2(rsp->gp_state, GP_EXIT);
			FUNC3(rsp);
		} else if (rsp->gp_state == GP_EXIT) {
			FUNC2(rsp->gp_state, GP_REPLAY);
		}
	}
	FUNC5(&rsp->rss_lock);
}