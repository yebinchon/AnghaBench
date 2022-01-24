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
struct fsnotify_mark {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_marks; } ;
struct fsnotify_group {TYPE_1__ fanotify_data; int /*<<< orphan*/  num_marks; } ;
typedef  int /*<<< orphan*/  fsnotify_connp_t ;
typedef  int /*<<< orphan*/  __kernel_fsid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct fsnotify_mark* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fanotify_mark_cache ; 
 int FUNC2 (struct fsnotify_mark*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fsnotify_mark*,struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_mark*) ; 
 struct fsnotify_mark* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fsnotify_mark *FUNC6(struct fsnotify_group *group,
						   fsnotify_connp_t *connp,
						   unsigned int type,
						   __kernel_fsid_t *fsid)
{
	struct fsnotify_mark *mark;
	int ret;

	if (FUNC1(&group->num_marks) > group->fanotify_data.max_marks)
		return FUNC0(-ENOSPC);

	mark = FUNC5(fanotify_mark_cache, GFP_KERNEL);
	if (!mark)
		return FUNC0(-ENOMEM);

	FUNC3(mark, group);
	ret = FUNC2(mark, connp, type, 0, fsid);
	if (ret) {
		FUNC4(mark);
		return FUNC0(ret);
	}

	return mark;
}