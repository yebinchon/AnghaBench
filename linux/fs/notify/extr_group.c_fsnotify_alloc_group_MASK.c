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
struct fsnotify_ops {int dummy; } ;
struct fsnotify_group {struct fsnotify_ops const* ops; int /*<<< orphan*/  marks_list; int /*<<< orphan*/  mark_mutex; int /*<<< orphan*/  max_events; int /*<<< orphan*/  notification_waitq; int /*<<< orphan*/  notification_list; int /*<<< orphan*/  notification_lock; int /*<<< orphan*/  user_waits; int /*<<< orphan*/  num_marks; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct fsnotify_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fsnotify_group* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct fsnotify_group *FUNC8(const struct fsnotify_ops *ops)
{
	struct fsnotify_group *group;

	group = FUNC4(sizeof(struct fsnotify_group), GFP_KERNEL);
	if (!group)
		return FUNC0(-ENOMEM);

	/* set to 0 when there a no external references to this group */
	FUNC6(&group->refcnt, 1);
	FUNC2(&group->num_marks, 0);
	FUNC2(&group->user_waits, 0);

	FUNC7(&group->notification_lock);
	FUNC1(&group->notification_list);
	FUNC3(&group->notification_waitq);
	group->max_events = UINT_MAX;

	FUNC5(&group->mark_mutex);
	FUNC1(&group->marks_list);

	group->ops = ops;

	return group;
}