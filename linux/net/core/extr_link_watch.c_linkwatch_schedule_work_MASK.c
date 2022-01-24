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
 unsigned long HZ ; 
 int /*<<< orphan*/  LW_URGENT ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  linkwatch_flags ; 
 unsigned long linkwatch_nextevent ; 
 int /*<<< orphan*/  linkwatch_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_wq ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(int urgent)
{
	unsigned long delay = linkwatch_nextevent - jiffies;

	if (FUNC3(LW_URGENT, &linkwatch_flags))
		return;

	/* Minimise down-time: drop delay for up event. */
	if (urgent) {
		if (FUNC2(LW_URGENT, &linkwatch_flags))
			return;
		delay = 0;
	}

	/* If we wrap around we'll delay it by at most HZ. */
	if (delay > HZ)
		delay = 0;

	/*
	 * If urgent, schedule immediate execution; otherwise, don't
	 * override the existing timer.
	 */
	if (FUNC3(LW_URGENT, &linkwatch_flags))
		FUNC0(system_wq, &linkwatch_work, 0);
	else
		FUNC1(&linkwatch_work, delay);
}