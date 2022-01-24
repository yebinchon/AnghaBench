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
struct rcu_data {int /*<<< orphan*/  last_fqs_resched; int /*<<< orphan*/  softirq_snap; scalar_t__ ticks_this_gp; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCU_SOFTIRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct rcu_data *rdp)
{
	rdp->ticks_this_gp = 0;
	rdp->softirq_snap = FUNC1(RCU_SOFTIRQ, FUNC2());
	FUNC0(rdp->last_fqs_resched, jiffies);
}