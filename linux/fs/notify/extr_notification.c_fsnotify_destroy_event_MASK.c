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
struct fsnotify_group {TYPE_1__* ops; int /*<<< orphan*/  notification_lock; struct fsnotify_event* overflow_event; } ;
struct fsnotify_event {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_event ) (struct fsnotify_event*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_event*) ; 

void FUNC5(struct fsnotify_group *group,
			    struct fsnotify_event *event)
{
	/* Overflow events are per-group and we don't want to free them */
	if (!event || event == group->overflow_event)
		return;
	/*
	 * If the event is still queued, we have a problem... Do an unreliable
	 * lockless check first to avoid locking in the common case. The
	 * locking may be necessary for permission events which got removed
	 * from the list by a different CPU than the one freeing the event.
	 */
	if (!FUNC1(&event->list)) {
		FUNC2(&group->notification_lock);
		FUNC0(!FUNC1(&event->list));
		FUNC3(&group->notification_lock);
	}
	group->ops->free_event(event);
}