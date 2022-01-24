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
struct fsnotify_group {scalar_t__ overflow_event; TYPE_1__* ops; int /*<<< orphan*/  user_waits; int /*<<< orphan*/  notification_waitq; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_event ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FSNOTIFY_OBJ_ALL_TYPES_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

void FUNC8(struct fsnotify_group *group)
{
	/*
	 * Stop queueing new events. The code below is careful enough to not
	 * require this but fanotify needs to stop queuing events even before
	 * fsnotify_destroy_group() is called and this makes the other callers
	 * of fsnotify_destroy_group() to see the same behavior.
	 */
	FUNC3(group);

	/* Clear all marks for this group and queue them for destruction */
	FUNC1(group, FSNOTIFY_OBJ_ALL_TYPES_MASK);

	/*
	 * Some marks can still be pinned when waiting for response from
	 * userspace. Wait for those now. fsnotify_prepare_user_wait() will
	 * not succeed now so this wait is race-free.
	 */
	FUNC7(group->notification_waitq, !FUNC0(&group->user_waits));

	/*
	 * Wait until all marks get really destroyed. We could actually destroy
	 * them ourselves instead of waiting for worker to do it, however that
	 * would be racy as worker can already be processing some marks before
	 * we even entered fsnotify_destroy_group().
	 */
	FUNC5();

	/*
	 * Since we have waited for fsnotify_mark_srcu in
	 * fsnotify_mark_destroy_list() there can be no outstanding event
	 * notification against this group. So clearing the notification queue
	 * of all events is reliable now.
	 */
	FUNC2(group);

	/*
	 * Destroy overflow event (we cannot use fsnotify_destroy_event() as
	 * that deliberately ignores overflow events.
	 */
	if (group->overflow_event)
		group->ops->free_event(group->overflow_event);

	FUNC4(group);
}