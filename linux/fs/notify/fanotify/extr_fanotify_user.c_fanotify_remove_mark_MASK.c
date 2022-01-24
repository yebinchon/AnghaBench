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
struct fsnotify_mark {int /*<<< orphan*/  connector; } ;
struct fsnotify_group {int /*<<< orphan*/  mark_mutex; } ;
typedef  int /*<<< orphan*/  fsnotify_connp_t ;
typedef  int __u32 ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct fsnotify_mark*,int,unsigned int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_mark*) ; 
 struct fsnotify_mark* FUNC3 (int /*<<< orphan*/ *,struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct fsnotify_group *group,
				fsnotify_connp_t *connp, __u32 mask,
				unsigned int flags)
{
	struct fsnotify_mark *fsn_mark = NULL;
	__u32 removed;
	int destroy_mark;

	FUNC7(&group->mark_mutex);
	fsn_mark = FUNC3(connp, group);
	if (!fsn_mark) {
		FUNC8(&group->mark_mutex);
		return -ENOENT;
	}

	removed = FUNC0(fsn_mark, mask, flags,
						 &destroy_mark);
	if (removed & FUNC1(fsn_mark->connector))
		FUNC6(fsn_mark->connector);
	if (destroy_mark)
		FUNC2(fsn_mark);
	FUNC8(&group->mark_mutex);
	if (destroy_mark)
		FUNC4(fsn_mark);

	/* matches the fsnotify_find_mark() */
	FUNC5(fsn_mark);
	return 0;
}