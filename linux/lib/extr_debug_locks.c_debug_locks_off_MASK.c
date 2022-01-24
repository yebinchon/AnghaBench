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

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ debug_locks ; 
 int /*<<< orphan*/  debug_locks_silent ; 

int FUNC2(void)
{
	if (debug_locks && FUNC0()) {
		if (!debug_locks_silent) {
			FUNC1();
			return 1;
		}
	}
	return 0;
}