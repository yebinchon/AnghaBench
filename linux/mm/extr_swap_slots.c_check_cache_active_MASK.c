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
 long THRESHOLD_ACTIVATE_SWAP_SLOTS_CACHE ; 
 long THRESHOLD_DEACTIVATE_SWAP_SLOTS_CACHE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 long FUNC1 () ; 
 long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int swap_slot_cache_active ; 
 int /*<<< orphan*/  swap_slot_cache_enabled ; 
 int /*<<< orphan*/  swap_slot_cache_initialized ; 

__attribute__((used)) static bool FUNC4(void)
{
	long pages;

	if (!swap_slot_cache_enabled || !swap_slot_cache_initialized)
		return false;

	pages = FUNC1();
	if (!swap_slot_cache_active) {
		if (pages > FUNC2() *
		    THRESHOLD_ACTIVATE_SWAP_SLOTS_CACHE)
			FUNC3();
		goto out;
	}

	/* if global pool of slot caches too low, deactivate cache */
	if (pages < FUNC2() * THRESHOLD_DEACTIVATE_SWAP_SLOTS_CACHE)
		FUNC0();
out:
	return swap_slot_cache_active;
}