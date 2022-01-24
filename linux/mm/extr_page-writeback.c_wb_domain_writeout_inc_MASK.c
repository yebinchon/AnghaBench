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
struct wb_domain {scalar_t__ period_time; int /*<<< orphan*/  period_timer; int /*<<< orphan*/  completions; } ;
struct fprop_local_percpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fprop_local_percpu*,unsigned int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wb_domain *dom,
				   struct fprop_local_percpu *completions,
				   unsigned int max_prop_frac)
{
	FUNC0(&dom->completions, completions,
			       max_prop_frac);
	/* First event after period switching was turned off? */
	if (FUNC2(!dom->period_time)) {
		/*
		 * We can race with other __bdi_writeout_inc calls here but
		 * it does not cause any harm since the resulting time when
		 * timer will fire and what is in writeout_period_time will be
		 * roughly the same.
		 */
		dom->period_time = FUNC3(jiffies);
		FUNC1(&dom->period_timer, dom->period_time);
	}
}