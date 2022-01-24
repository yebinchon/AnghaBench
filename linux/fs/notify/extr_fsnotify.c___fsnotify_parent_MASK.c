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
struct path {int i_fsnotify_mask; struct dentry* dentry; } ;
struct name_snapshot {int /*<<< orphan*/  name; } ;
typedef  struct inode {int i_fsnotify_mask; struct dentry* dentry; } const inode ;
struct dentry {int d_flags; struct path const* d_inode; } ;
typedef  int __u32 ;

/* Variables and functions */
 int ALL_FSNOTIFY_EVENTS ; 
 int DCACHE_FSNOTIFY_PARENT_WATCHED ; 
 int /*<<< orphan*/  FSNOTIFY_EVENT_INODE ; 
 int /*<<< orphan*/  FSNOTIFY_EVENT_PATH ; 
 int FS_EVENT_ON_CHILD ; 
 int /*<<< orphan*/  FUNC0 (struct path const*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (struct path const*,int,struct path const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct path const*) ; 
 int /*<<< orphan*/  FUNC5 (struct name_snapshot*) ; 
 int /*<<< orphan*/  FUNC6 (struct name_snapshot*,struct dentry*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(const struct path *path, struct dentry *dentry, __u32 mask)
{
	struct dentry *parent;
	struct inode *p_inode;
	int ret = 0;

	if (!dentry)
		dentry = path->dentry;

	if (!(dentry->d_flags & DCACHE_FSNOTIFY_PARENT_WATCHED))
		return 0;

	parent = FUNC1(dentry);
	p_inode = parent->d_inode;

	if (FUNC7(!FUNC4(p_inode))) {
		FUNC0(p_inode);
	} else if (p_inode->i_fsnotify_mask & mask & ALL_FSNOTIFY_EVENTS) {
		struct name_snapshot name;

		/* we are notifying a parent so come up with the new mask which
		 * specifies these are events which came from a child. */
		mask |= FS_EVENT_ON_CHILD;

		FUNC6(&name, dentry);
		if (path)
			ret = FUNC3(p_inode, mask, path, FSNOTIFY_EVENT_PATH,
				       &name.name, 0);
		else
			ret = FUNC3(p_inode, mask, dentry->d_inode, FSNOTIFY_EVENT_INODE,
				       &name.name, 0);
		FUNC5(&name);
	}

	FUNC2(parent);

	return ret;
}