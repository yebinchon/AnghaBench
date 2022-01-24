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
struct clock_event_device {unsigned long long mult; unsigned long long shift; scalar_t__ (* set_next_event ) (unsigned long,struct clock_event_device*) ;int /*<<< orphan*/  retries; int /*<<< orphan*/  next_event; scalar_t__ min_delta_ns; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int ETIME ; 
 scalar_t__ FUNC0 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned long,struct clock_event_device*) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *dev)
{
	unsigned long long clc;
	int64_t delta = 0;
	int i;

	for (i = 0; i < 10; i++) {
		delta += dev->min_delta_ns;
		dev->next_event = FUNC1(FUNC2(), delta);

		if (FUNC0(dev))
			return 0;

		dev->retries++;
		clc = ((unsigned long long) delta * dev->mult) >> dev->shift;
		if (dev->set_next_event((unsigned long) clc, dev) == 0)
			return 0;
	}
	return -ETIME;
}