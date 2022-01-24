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
struct net_bridge {scalar_t__ stp_enabled; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned long BR_MAX_FORWARD_DELAY ; 
 unsigned long BR_MIN_FORWARD_DELAY ; 
 scalar_t__ BR_NO_STP ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct net_bridge*,unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct net_bridge *br, unsigned long val)
{
	unsigned long t = FUNC1(val);
	int err = -ERANGE;

	FUNC2(&br->lock);
	if (br->stp_enabled != BR_NO_STP &&
	    (t < BR_MIN_FORWARD_DELAY || t > BR_MAX_FORWARD_DELAY))
		goto unlock;

	FUNC0(br, t);
	err = 0;

unlock:
	FUNC3(&br->lock);
	return err;
}