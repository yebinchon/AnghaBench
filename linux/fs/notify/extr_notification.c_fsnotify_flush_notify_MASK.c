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
struct fsnotify_group {int /*<<< orphan*/  notification_lock; } ;
struct fsnotify_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsnotify_group*,struct fsnotify_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_group*) ; 
 struct fsnotify_event* FUNC2 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct fsnotify_group *group)
{
	struct fsnotify_event *event;

	FUNC3(&group->notification_lock);
	while (!FUNC1(group)) {
		event = FUNC2(group);
		FUNC4(&group->notification_lock);
		FUNC0(group, event);
		FUNC3(&group->notification_lock);
	}
	FUNC4(&group->notification_lock);
}