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
 int /*<<< orphan*/  o2hb_dependent_users ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const char *region_uuid)
{
	FUNC2(&o2hb_live_lock);

	/* local heartbeat */
	if (!FUNC0()) {
	    FUNC1(region_uuid);
	    goto unlock;
	}

	/*
	 * if global heartbeat active and there are no dependent users,
	 * unpin all quorum regions
	 */
	o2hb_dependent_users--;
	if (!o2hb_dependent_users)
		FUNC1(NULL);

unlock:
	FUNC3(&o2hb_live_lock);
}