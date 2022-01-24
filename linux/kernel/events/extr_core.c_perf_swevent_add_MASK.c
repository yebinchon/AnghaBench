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
struct swevent_htable {int dummy; } ;
struct hw_perf_event {int state; int /*<<< orphan*/  sample_period; int /*<<< orphan*/  last_period; } ;
struct perf_event {int /*<<< orphan*/  hlist_entry; struct hw_perf_event hw; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PERF_EF_START ; 
 scalar_t__ FUNC0 (int) ; 
 struct hlist_head* FUNC1 (struct swevent_htable*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 scalar_t__ FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  swevent_htable ; 
 struct swevent_htable* FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct perf_event *event, int flags)
{
	struct swevent_htable *swhash = FUNC6(&swevent_htable);
	struct hw_perf_event *hwc = &event->hw;
	struct hlist_head *head;

	if (FUNC3(event)) {
		hwc->last_period = hwc->sample_period;
		FUNC5(event);
	}

	hwc->state = !(flags & PERF_EF_START);

	head = FUNC1(swhash, event);
	if (FUNC0(!head))
		return -EINVAL;

	FUNC2(&event->hlist_entry, head);
	FUNC4(event);

	return 0;
}