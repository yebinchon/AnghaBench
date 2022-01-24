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
struct perf_event_attr {int dummy; } ;
struct perf_event {struct perf_event_attr const attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct perf_event_attr const* FUNC0 (int /*<<< orphan*/ ) ; 

const struct perf_event_attr *FUNC1(struct perf_event *event)
{
	if (!event)
		return FUNC0(-EINVAL);

	return &event->attr;
}