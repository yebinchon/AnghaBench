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
struct fsnotify_mark {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  g_list; int /*<<< orphan*/  refcnt; struct fsnotify_group* group; } ;
struct fsnotify_group {int /*<<< orphan*/  num_marks; int /*<<< orphan*/  mark_mutex; } ;

/* Variables and functions */
 int FSNOTIFY_MARK_FLAG_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsnotify_mark_srcu ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct fsnotify_mark *mark)
{
	struct fsnotify_group *group = mark->group;

	FUNC0(!FUNC4(&group->mark_mutex));
	FUNC0(!FUNC8(&fsnotify_mark_srcu) &&
		     FUNC5(&mark->refcnt) < 1 +
			!!(mark->flags & FSNOTIFY_MARK_FLAG_ATTACHED));

	FUNC6(&mark->lock);
	/* something else already called this function on this mark */
	if (!(mark->flags & FSNOTIFY_MARK_FLAG_ATTACHED)) {
		FUNC7(&mark->lock);
		return;
	}
	mark->flags &= ~FSNOTIFY_MARK_FLAG_ATTACHED;
	FUNC3(&mark->g_list);
	FUNC7(&mark->lock);

	FUNC1(&group->num_marks);

	/* Drop mark reference acquired in fsnotify_add_mark_locked() */
	FUNC2(mark);
}