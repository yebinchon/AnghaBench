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
struct path {int /*<<< orphan*/  dentry; } ;
struct nameidata {unsigned int seq; int flags; struct inode* inode; struct path path; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ECHILD ; 
 int LOOKUP_RCU ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*,struct path*,struct inode**,unsigned int*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct path*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC4 (struct path*,struct nameidata*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct nameidata *nd)
{
	struct path path = nd->path;
	struct inode *inode = nd->inode;
	unsigned seq = nd->seq;
	int err;

	if (nd->flags & LOOKUP_RCU) {
		/*
		 * don't bother with unlazy_walk on failure - we are
		 * at the very beginning of walk, so we lose nothing
		 * if we simply redo everything in non-RCU mode
		 */
		if (FUNC5(!FUNC0(nd, &path, &inode, &seq)))
			return -ECHILD;
	} else {
		FUNC2(path.dentry);
		err = FUNC3(&path, nd);
		if (FUNC5(err < 0))
			return err;
		inode = FUNC1(path.dentry);
		seq = 0;
	}
	FUNC4(&path, nd);
	nd->inode = inode;
	nd->seq = seq;
	return 0;
}