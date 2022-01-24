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
struct net_bridge {unsigned long bridge_ageing_time; unsigned long ageing_time; int /*<<< orphan*/  gc_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  clock_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_long_wq ; 

int FUNC5(struct net_bridge *br, clock_t ageing_time)
{
	unsigned long t = FUNC1(ageing_time);
	int err;

	err = FUNC0(br->dev, t);
	if (err)
		return err;

	FUNC3(&br->lock);
	br->bridge_ageing_time = t;
	br->ageing_time = t;
	FUNC4(&br->lock);

	FUNC2(system_long_wq, &br->gc_work, 0);

	return 0;
}