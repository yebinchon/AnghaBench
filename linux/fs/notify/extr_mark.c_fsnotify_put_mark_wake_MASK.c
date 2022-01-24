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
struct fsnotify_mark {struct fsnotify_group* group; } ;
struct fsnotify_group {int /*<<< orphan*/  notification_waitq; scalar_t__ shutdown; int /*<<< orphan*/  user_waits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fsnotify_mark *mark)
{
	if (mark) {
		struct fsnotify_group *group = mark->group;

		FUNC1(mark);
		/*
		 * We abuse notification_waitq on group shutdown for waiting for
		 * all marks pinned when waiting for userspace.
		 */
		if (FUNC0(&group->user_waits) && group->shutdown)
			FUNC2(&group->notification_waitq);
	}
}