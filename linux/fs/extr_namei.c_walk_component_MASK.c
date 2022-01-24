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
struct path {int /*<<< orphan*/  dentry; int /*<<< orphan*/  mnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt; int /*<<< orphan*/  dentry; } ;
struct nameidata {scalar_t__ last_type; TYPE_1__ path; int /*<<< orphan*/  flags; int /*<<< orphan*/  last; scalar_t__ depth; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LAST_NORM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int WALK_MORE ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct path*,struct nameidata*) ; 
 int FUNC5 (struct nameidata*,scalar_t__) ; 
 int FUNC6 (struct nameidata*,struct path*,struct inode**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct path*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC9 (struct nameidata*) ; 
 int FUNC10 (struct nameidata*,struct path*,int,struct inode*,unsigned int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct nameidata *nd, int flags)
{
	struct path path;
	struct inode *inode;
	unsigned seq;
	int err;
	/*
	 * "." and ".." are special - ".." especially so because it has
	 * to be able to know about the current root directory and
	 * parent relationships.
	 */
	if (FUNC11(nd->last_type != LAST_NORM)) {
		err = FUNC5(nd, nd->last_type);
		if (!(flags & WALK_MORE) && nd->depth)
			FUNC9(nd);
		return err;
	}
	err = FUNC6(nd, &path, &inode, &seq);
	if (FUNC11(err <= 0)) {
		if (err < 0)
			return err;
		path.dentry = FUNC7(&nd->last, nd->path.dentry,
					  nd->flags);
		if (FUNC0(path.dentry))
			return FUNC1(path.dentry);

		path.mnt = nd->path.mnt;
		err = FUNC4(&path, nd);
		if (FUNC11(err < 0))
			return err;

		if (FUNC11(FUNC3(path.dentry))) {
			FUNC8(&path, nd);
			return -ENOENT;
		}

		seq = 0;	/* we are already out of RCU mode */
		inode = FUNC2(path.dentry);
	}

	return FUNC10(nd, &path, flags, inode, seq);
}