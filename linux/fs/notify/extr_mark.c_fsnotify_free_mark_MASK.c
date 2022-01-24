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
struct fsnotify_mark {int flags; int /*<<< orphan*/  lock; struct fsnotify_group* group; } ;
struct fsnotify_group {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* freeing_mark ) (struct fsnotify_mark*,struct fsnotify_group*) ;} ;

/* Variables and functions */
 int FSNOTIFY_MARK_FLAG_ALIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_mark*,struct fsnotify_group*) ; 

void FUNC3(struct fsnotify_mark *mark)
{
	struct fsnotify_group *group = mark->group;

	FUNC0(&mark->lock);
	/* something else already called this function on this mark */
	if (!(mark->flags & FSNOTIFY_MARK_FLAG_ALIVE)) {
		FUNC1(&mark->lock);
		return;
	}
	mark->flags &= ~FSNOTIFY_MARK_FLAG_ALIVE;
	FUNC1(&mark->lock);

	/*
	 * Some groups like to know that marks are being freed.  This is a
	 * callback to the group function to let it know that this mark
	 * is being freed.
	 */
	if (group->ops->freeing_mark)
		group->ops->freeing_mark(mark, group);
}