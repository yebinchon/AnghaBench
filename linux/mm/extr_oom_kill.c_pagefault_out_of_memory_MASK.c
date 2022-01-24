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
struct oom_control {int /*<<< orphan*/  order; int /*<<< orphan*/  gfp_mask; int /*<<< orphan*/ * memcg; int /*<<< orphan*/ * nodemask; int /*<<< orphan*/ * zonelist; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  oom_lock ; 
 int /*<<< orphan*/  FUNC3 (struct oom_control*) ; 

void FUNC4(void)
{
	struct oom_control oc = {
		.zonelist = NULL,
		.nodemask = NULL,
		.memcg = NULL,
		.gfp_mask = 0,
		.order = 0,
	};

	if (FUNC0(true))
		return;

	if (!FUNC1(&oom_lock))
		return;
	FUNC3(&oc);
	FUNC2(&oom_lock);
}