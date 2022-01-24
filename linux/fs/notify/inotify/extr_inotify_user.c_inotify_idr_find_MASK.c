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
struct inotify_inode_mark {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idr_lock; } ;
struct fsnotify_group {TYPE_1__ inotify_data; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 struct inotify_inode_mark* FUNC0 (struct fsnotify_group*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inotify_inode_mark *FUNC3(struct fsnotify_group *group,
							 int wd)
{
	struct inotify_inode_mark *i_mark;
	spinlock_t *idr_lock = &group->inotify_data.idr_lock;

	FUNC1(idr_lock);
	i_mark = FUNC0(group, wd);
	FUNC2(idr_lock);

	return i_mark;
}