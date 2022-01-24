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
struct sugov_policy {int /*<<< orphan*/  work_lock; int /*<<< orphan*/  thread; int /*<<< orphan*/  worker; TYPE_1__* policy; } ;
struct TYPE_2__ {scalar_t__ fast_switch_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sugov_policy *sg_policy)
{
	/* kthread only required for slow path */
	if (sg_policy->policy->fast_switch_enabled)
		return;

	FUNC0(&sg_policy->worker);
	FUNC1(sg_policy->thread);
	FUNC2(&sg_policy->work_lock);
}