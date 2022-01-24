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
 scalar_t__ S2IDLE_STATE_NONE ; 
 scalar_t__ S2IDLE_STATE_WAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  s2idle_lock ; 
 scalar_t__ s2idle_state ; 
 int /*<<< orphan*/  s2idle_wait_head ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	unsigned long flags;

	FUNC0(&s2idle_lock, flags);
	if (s2idle_state > S2IDLE_STATE_NONE) {
		s2idle_state = S2IDLE_STATE_WAKE;
		FUNC2(&s2idle_wait_head);
	}
	FUNC1(&s2idle_lock, flags);
}