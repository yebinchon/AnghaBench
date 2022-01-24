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
struct fprop_global {int period; int /*<<< orphan*/  sequence; int /*<<< orphan*/  events; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(struct fprop_global *p, int periods)
{
	s64 events;
	unsigned long flags;

	FUNC1(flags);
	events = FUNC3(&p->events);
	/*
	 * Don't do anything if there are no events.
	 */
	if (events <= 1) {
		FUNC0(flags);
		return false;
	}
	FUNC4(&p->sequence);
	if (periods < 64)
		events -= events >> periods;
	/* Use addition to avoid losing events happening between sum and set */
	FUNC2(&p->events, -events);
	p->period += periods;
	FUNC5(&p->sequence);
	FUNC0(flags);

	return true;
}