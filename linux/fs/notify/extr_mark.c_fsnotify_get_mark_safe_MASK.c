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
struct fsnotify_mark {int flags; int /*<<< orphan*/  lock; TYPE_1__* group; int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  user_waits; } ;

/* Variables and functions */
 int FSNOTIFY_MARK_FLAG_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_mark*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct fsnotify_mark *mark)
{
	if (!mark)
		return true;

	if (FUNC2(&mark->refcnt)) {
		FUNC3(&mark->lock);
		if (mark->flags & FSNOTIFY_MARK_FLAG_ATTACHED) {
			/* mark is attached, group is still alive then */
			FUNC0(&mark->group->user_waits);
			FUNC4(&mark->lock);
			return true;
		}
		FUNC4(&mark->lock);
		FUNC1(mark);
	}
	return false;
}