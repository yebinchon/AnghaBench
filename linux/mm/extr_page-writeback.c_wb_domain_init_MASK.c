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
struct wb_domain {int /*<<< orphan*/  completions; int /*<<< orphan*/  dirty_limit_tstamp; int /*<<< orphan*/  period_timer; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_DEFERRABLE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct wb_domain*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  writeout_period ; 

int FUNC4(struct wb_domain *dom, gfp_t gfp)
{
	FUNC1(dom, 0, sizeof(*dom));

	FUNC2(&dom->lock);

	FUNC3(&dom->period_timer, writeout_period, TIMER_DEFERRABLE);

	dom->dirty_limit_tstamp = jiffies;

	return FUNC0(&dom->completions, gfp);
}