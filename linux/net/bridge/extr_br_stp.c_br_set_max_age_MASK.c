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
struct net_bridge {unsigned long bridge_max_age; unsigned long max_age; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned long BR_MAX_MAX_AGE ; 
 unsigned long BR_MIN_MAX_AGE ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (struct net_bridge*) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct net_bridge *br, unsigned long val)
{
	unsigned long t = FUNC1(val);

	if (t < BR_MIN_MAX_AGE || t > BR_MAX_MAX_AGE)
		return -ERANGE;

	FUNC2(&br->lock);
	br->bridge_max_age = t;
	if (FUNC0(br))
		br->max_age = br->bridge_max_age;
	FUNC3(&br->lock);
	return 0;

}