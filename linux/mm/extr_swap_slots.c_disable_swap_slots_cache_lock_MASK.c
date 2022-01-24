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
 int SLOTS_CACHE ; 
 int SLOTS_CACHE_RET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int swap_slot_cache_enabled ; 
 scalar_t__ swap_slot_cache_initialized ; 
 int /*<<< orphan*/  swap_slots_cache_enable_mutex ; 

void FUNC4(void)
{
	FUNC2(&swap_slots_cache_enable_mutex);
	swap_slot_cache_enabled = false;
	if (swap_slot_cache_initialized) {
		/* serialize with cpu hotplug operations */
		FUNC1();
		FUNC0(SLOTS_CACHE|SLOTS_CACHE_RET);
		FUNC3();
	}
}