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
struct zone {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_ZONE_ACTIVE_ANON ; 
 int /*<<< orphan*/  NR_ZONE_ACTIVE_FILE ; 
 int /*<<< orphan*/  NR_ZONE_INACTIVE_ANON ; 
 int /*<<< orphan*/  NR_ZONE_INACTIVE_FILE ; 
 scalar_t__ FUNC0 () ; 
 unsigned long FUNC1 (struct zone*,int /*<<< orphan*/ ) ; 

unsigned long FUNC2(struct zone *zone)
{
	unsigned long nr;

	nr = FUNC1(zone, NR_ZONE_INACTIVE_FILE) +
		FUNC1(zone, NR_ZONE_ACTIVE_FILE);
	if (FUNC0() > 0)
		nr += FUNC1(zone, NR_ZONE_INACTIVE_ANON) +
			FUNC1(zone, NR_ZONE_ACTIVE_ANON);

	return nr;
}