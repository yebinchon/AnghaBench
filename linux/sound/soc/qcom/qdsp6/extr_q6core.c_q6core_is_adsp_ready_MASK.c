#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADSP_STATE_READY_TIMEOUT_MS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__* g_core ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

bool FUNC5(void)
{
	unsigned long  timeout;
	bool ret = false;

	if (!g_core)
		return false;

	FUNC2(&g_core->lock);
	timeout = jiffies + FUNC1(ADSP_STATE_READY_TIMEOUT_MS);
	for (;;) {
		if (FUNC0(g_core)) {
			ret = true;
			break;
		}

		if (!FUNC4(timeout, jiffies)) {
			ret = false;
			break;
		}
	}

	FUNC3(&g_core->lock);
	return ret;
}