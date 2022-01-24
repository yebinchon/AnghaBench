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
struct path {TYPE_1__* dentry; } ;
struct nameidata {int flags; unsigned int seq; struct inode* inode; scalar_t__ depth; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_seq; } ;

/* Variables and functions */
 int ECHILD ; 
 int LOOKUP_FOLLOW ; 
 int LOOKUP_RCU ; 
 int WALK_FOLLOW ; 
 int WALK_MORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct path*,struct nameidata*) ; 
 int FUNC3 (struct nameidata*,struct path*,struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct nameidata*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static inline int FUNC6(struct nameidata *nd, struct path *path,
			    int flags, struct inode *inode, unsigned seq)
{
	if (!(flags & WALK_MORE) && nd->depth)
		FUNC4(nd);
	if (FUNC1(!FUNC0(path->dentry)) ||
	   !(flags & WALK_FOLLOW || nd->flags & LOOKUP_FOLLOW)) {
		/* not a symlink or should not follow */
		FUNC2(path, nd);
		nd->inode = inode;
		nd->seq = seq;
		return 0;
	}
	/* make sure that d_is_symlink above matches inode */
	if (nd->flags & LOOKUP_RCU) {
		if (FUNC5(&path->dentry->d_seq, seq))
			return -ECHILD;
	}
	return FUNC3(nd, path, inode, seq);
}