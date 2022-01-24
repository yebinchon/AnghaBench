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
struct net_bridge {unsigned long bridge_hello_time; unsigned long hello_time; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned long BR_MAX_HELLO_TIME ; 
 unsigned long BR_MIN_HELLO_TIME ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (struct net_bridge*) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct net_bridge *br, unsigned long val)
{
	unsigned long t = FUNC1(val);

	if (t < BR_MIN_HELLO_TIME || t > BR_MAX_HELLO_TIME)
		return -ERANGE;

	FUNC2(&br->lock);
	br->bridge_hello_time = t;
	if (FUNC0(br))
		br->hello_time = br->bridge_hello_time;
	FUNC3(&br->lock);
	return 0;
}