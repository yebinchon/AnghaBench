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
struct clock_event_device {int features; int (* set_next_ktime ) (scalar_t__,struct clock_event_device*) ;unsigned long long mult; unsigned long long shift; int (* set_next_event ) (unsigned long,struct clock_event_device*) ;scalar_t__ min_delta_ns; scalar_t__ max_delta_ns; scalar_t__ next_event; } ;
typedef  scalar_t__ ktime_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int CLOCK_EVT_FEAT_KTIME ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct clock_event_device*) ; 
 scalar_t__ FUNC4 (struct clock_event_device*) ; 
 int FUNC5 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 int FUNC11 (scalar_t__,struct clock_event_device*) ; 
 int FUNC12 (unsigned long,struct clock_event_device*) ; 

int FUNC13(struct clock_event_device *dev, ktime_t expires,
			      bool force)
{
	unsigned long long clc;
	int64_t delta;
	int rc;

	if (FUNC1(expires < 0))
		return -ETIME;

	dev->next_event = expires;

	if (FUNC4(dev))
		return 0;

	/* We must be in ONESHOT state here */
	FUNC0(!FUNC3(dev), "Current state: %d\n",
		  FUNC2(dev));

	/* Shortcut for clockevent devices that can deal with ktime. */
	if (dev->features & CLOCK_EVT_FEAT_KTIME)
		return dev->set_next_ktime(expires, dev);

	delta = FUNC8(FUNC7(expires, FUNC6()));
	if (delta <= 0)
		return force ? FUNC5(dev) : -ETIME;

	delta = FUNC10(delta, (int64_t) dev->max_delta_ns);
	delta = FUNC9(delta, (int64_t) dev->min_delta_ns);

	clc = ((unsigned long long) delta * dev->mult) >> dev->shift;
	rc = dev->set_next_event((unsigned long) clc, dev);

	return (rc && force) ? FUNC5(dev) : rc;
}