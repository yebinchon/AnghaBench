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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  logbuf_lock ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	/*
	 * Make sure that we could access the main ring buffer.
	 * Do not risk a double release when more CPUs are up.
	 */
	if (FUNC3(&logbuf_lock)) {
		if (FUNC1() > 1)
			return;

		FUNC0();
		FUNC4(&logbuf_lock);
	}

	FUNC2();
}