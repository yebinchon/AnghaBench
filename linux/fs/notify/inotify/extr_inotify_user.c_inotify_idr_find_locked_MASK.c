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
struct fsnotify_mark {int /*<<< orphan*/  refcnt; } ;
struct inotify_inode_mark {struct fsnotify_mark fsn_mark; } ;
struct idr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idr_lock; struct idr idr; } ;
struct fsnotify_group {TYPE_1__ inotify_data; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_mark*) ; 
 struct inotify_inode_mark* FUNC3 (struct idr*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inotify_inode_mark *FUNC5(struct fsnotify_group *group,
								int wd)
{
	struct idr *idr = &group->inotify_data.idr;
	spinlock_t *idr_lock = &group->inotify_data.idr_lock;
	struct inotify_inode_mark *i_mark;

	FUNC1(idr_lock);

	i_mark = FUNC3(idr, wd);
	if (i_mark) {
		struct fsnotify_mark *fsn_mark = &i_mark->fsn_mark;

		FUNC2(fsn_mark);
		/* One ref for being in the idr, one ref we just took */
		FUNC0(FUNC4(&fsn_mark->refcnt) < 2);
	}

	return i_mark;
}