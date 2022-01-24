#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hold_queue; int /*<<< orphan*/  hold_timer; } ;
struct TYPE_3__ {int dead; } ;
struct xfrm_policy {int /*<<< orphan*/  timer; TYPE_2__ polq; int /*<<< orphan*/  genid; TYPE_1__ walk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_policy*) ; 

__attribute__((used)) static void FUNC4(struct xfrm_policy *policy)
{
	policy->walk.dead = 1;

	FUNC0(&policy->genid);

	if (FUNC1(&policy->polq.hold_timer))
		FUNC3(policy);
	FUNC2(&policy->polq.hold_queue);

	if (FUNC1(&policy->timer))
		FUNC3(policy);

	FUNC3(policy);
}