#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  mask; } ;
struct inotify_inode_mark {int wd; TYPE_2__ fsn_mark; } ;
struct inode {int dummy; } ;
struct idr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ucounts; int /*<<< orphan*/  idr_lock; struct idr idr; } ;
struct fsnotify_group {TYPE_1__ inotify_data; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_2__*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct idr*,int /*<<< orphan*/ *,struct inotify_inode_mark*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inotify_inode_mark_cachep ; 
 int /*<<< orphan*/  FUNC6 (struct fsnotify_group*,struct inotify_inode_mark*) ; 
 struct inotify_inode_mark* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct fsnotify_group *group,
			     struct inode *inode,
			     u32 arg)
{
	struct inotify_inode_mark *tmp_i_mark;
	__u32 mask;
	int ret;
	struct idr *idr = &group->inotify_data.idr;
	spinlock_t *idr_lock = &group->inotify_data.idr_lock;

	mask = FUNC5(arg);

	tmp_i_mark = FUNC7(inotify_inode_mark_cachep, GFP_KERNEL);
	if (FUNC8(!tmp_i_mark))
		return -ENOMEM;

	FUNC1(&tmp_i_mark->fsn_mark, group);
	tmp_i_mark->fsn_mark.mask = mask;
	tmp_i_mark->wd = -1;

	ret = FUNC4(idr, idr_lock, tmp_i_mark);
	if (ret)
		goto out_err;

	/* increment the number of watches the user has */
	if (!FUNC3(group->inotify_data.ucounts)) {
		FUNC6(group, tmp_i_mark);
		ret = -ENOSPC;
		goto out_err;
	}

	/* we are on the idr, now get on the inode */
	ret = FUNC0(&tmp_i_mark->fsn_mark, inode, 0);
	if (ret) {
		/* we failed to get on the inode, get off the idr */
		FUNC6(group, tmp_i_mark);
		goto out_err;
	}


	/* return the watch descriptor for this new mark */
	ret = tmp_i_mark->wd;

out_err:
	/* match the ref from fsnotify_init_mark() */
	FUNC2(&tmp_i_mark->fsn_mark);

	return ret;
}