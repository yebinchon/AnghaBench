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
struct fsnotify_mark {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  g_list; int /*<<< orphan*/  connector; scalar_t__ mask; struct fsnotify_group* group; } ;
struct fsnotify_group {int /*<<< orphan*/  num_marks; int /*<<< orphan*/  marks_list; int /*<<< orphan*/  mark_mutex; } ;
typedef  int /*<<< orphan*/  fsnotify_connp_t ;
typedef  int /*<<< orphan*/  __kernel_fsid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FSNOTIFY_MARK_FLAG_ALIVE ; 
 int FSNOTIFY_MARK_FLAG_ATTACHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct fsnotify_mark*,int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct fsnotify_mark *mark,
			     fsnotify_connp_t *connp, unsigned int type,
			     int allow_dups, __kernel_fsid_t *fsid)
{
	struct fsnotify_group *group = mark->group;
	int ret = 0;

	FUNC0(!FUNC9(&group->mark_mutex));

	/*
	 * LOCKING ORDER!!!!
	 * group->mark_mutex
	 * mark->lock
	 * mark->connector->lock
	 */
	FUNC10(&mark->lock);
	mark->flags |= FSNOTIFY_MARK_FLAG_ALIVE | FSNOTIFY_MARK_FLAG_ATTACHED;

	FUNC7(&mark->g_list, &group->marks_list);
	FUNC2(&group->num_marks);
	FUNC4(mark); /* for g_list */
	FUNC11(&mark->lock);

	ret = FUNC3(mark, connp, type, allow_dups, fsid);
	if (ret)
		goto err;

	if (mark->mask)
		FUNC6(mark->connector);

	return ret;
err:
	FUNC10(&mark->lock);
	mark->flags &= ~(FSNOTIFY_MARK_FLAG_ALIVE |
			 FSNOTIFY_MARK_FLAG_ATTACHED);
	FUNC8(&mark->g_list);
	FUNC11(&mark->lock);
	FUNC1(&group->num_marks);

	FUNC5(mark);
	return ret;
}