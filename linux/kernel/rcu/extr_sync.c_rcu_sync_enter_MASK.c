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
struct rcu_sync {int gp_state; int /*<<< orphan*/  gp_wait; int /*<<< orphan*/  cb_head; int /*<<< orphan*/  rss_lock; int /*<<< orphan*/  gp_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GP_ENTER ; 
 int GP_IDLE ; 
 scalar_t__ GP_PASSED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

void FUNC8(struct rcu_sync *rsp)
{
	int gp_state;

	FUNC4(&rsp->rss_lock);
	gp_state = rsp->gp_state;
	if (gp_state == GP_IDLE) {
		FUNC2(rsp->gp_state, GP_ENTER);
		FUNC1(rsp->gp_count);
		/*
		 * Note that we could simply do rcu_sync_call(rsp) here and
		 * avoid the "if (gp_state == GP_IDLE)" block below.
		 *
		 * However, synchronize_rcu() can be faster if rcu_expedited
		 * or rcu_blocking_is_gp() is true.
		 *
		 * Another reason is that we can't wait for rcu callback if
		 * we are called at early boot time but this shouldn't happen.
		 */
	}
	rsp->gp_count++;
	FUNC5(&rsp->rss_lock);

	if (gp_state == GP_IDLE) {
		/*
		 * See the comment above, this simply does the "synchronous"
		 * call_rcu(rcu_sync_func) which does GP_ENTER -> GP_PASSED.
		 */
		FUNC6();
		FUNC3(&rsp->cb_head);
		/* Not really needed, wait_event() would see GP_PASSED. */
		return;
	}

	FUNC7(rsp->gp_wait, FUNC0(rsp->gp_state) >= GP_PASSED);
}