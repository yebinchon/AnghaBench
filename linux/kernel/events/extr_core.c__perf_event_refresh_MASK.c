#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ inherit; } ;
struct perf_event {int /*<<< orphan*/  event_limit; TYPE_1__ attr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 

__attribute__((used)) static int FUNC3(struct perf_event *event, int refresh)
{
	/*
	 * not supported on inherited events
	 */
	if (event->attr.inherit || !FUNC2(event))
		return -EINVAL;

	FUNC1(refresh, &event->event_limit);
	FUNC0(event);

	return 0;
}