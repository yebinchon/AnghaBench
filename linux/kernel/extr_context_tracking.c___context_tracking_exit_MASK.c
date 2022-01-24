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
typedef  enum ctx_state { ____Placeholder_ctx_state } ctx_state ;
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTEXT_KERNEL ; 
 int CONTEXT_USER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ context_tracking ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(enum ctx_state state)
{
	if (!FUNC2())
		return;

	if (FUNC0(context_tracking.state) == state) {
		if (FUNC0(context_tracking.active)) {
			/*
			 * We are going to run code that may use RCU. Inform
			 * RCU core about that (ie: we may need the tick again).
			 */
			FUNC4();
			if (state == CONTEXT_USER) {
				FUNC6(current);
				FUNC5(0);
			}
		}
		FUNC1(context_tracking.state, CONTEXT_KERNEL);
	}
	FUNC3();
}