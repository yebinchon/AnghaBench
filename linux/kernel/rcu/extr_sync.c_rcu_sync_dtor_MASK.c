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
struct rcu_sync {int gp_count; int gp_state; int /*<<< orphan*/  rss_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GP_EXIT ; 
 int GP_IDLE ; 
 scalar_t__ GP_PASSED ; 
 int GP_REPLAY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct rcu_sync *rsp)
{
	int gp_state;

	FUNC1(FUNC0(rsp->gp_count));
	FUNC1(FUNC0(rsp->gp_state) == GP_PASSED);

	FUNC4(&rsp->rss_lock);
	if (rsp->gp_state == GP_REPLAY)
		FUNC2(rsp->gp_state, GP_EXIT);
	gp_state = rsp->gp_state;
	FUNC5(&rsp->rss_lock);

	if (gp_state != GP_IDLE) {
		FUNC3();
		FUNC1(rsp->gp_state != GP_IDLE);
	}
}