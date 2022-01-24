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
typedef  int u32 ;
struct inode {int i_mode; } ;
struct fuse_inode {int /*<<< orphan*/  i_time; int /*<<< orphan*/  inval_mask; } ;
struct fuse_conn {scalar_t__ default_permissions; } ;

/* Variables and functions */
 int EACCES ; 
 int MAY_ACCESS ; 
 int MAY_CHDIR ; 
 int MAY_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int STATX_GID ; 
 int STATX_MODE ; 
 int STATX_UID ; 
 scalar_t__ FUNC1 (int) ; 
 int S_IXUGO ; 
 int FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_conn*) ; 
 int FUNC4 (struct inode*,int) ; 
 int FUNC5 (struct inode*,int) ; 
 struct fuse_conn* FUNC6 (struct inode*) ; 
 struct fuse_inode* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, int mask)
{
	struct fuse_conn *fc = FUNC6(inode);
	bool refreshed = false;
	int err = 0;

	if (!FUNC3(fc))
		return -EACCES;

	/*
	 * If attributes are needed, refresh them before proceeding
	 */
	if (fc->default_permissions ||
	    ((mask & MAY_EXEC) && FUNC1(inode->i_mode))) {
		struct fuse_inode *fi = FUNC7(inode);
		u32 perm_mask = STATX_MODE | STATX_UID | STATX_GID;

		if (perm_mask & FUNC0(fi->inval_mask) ||
		    FUNC9(fi->i_time, FUNC8())) {
			refreshed = true;

			err = FUNC4(inode, mask);
			if (err)
				return err;
		}
	}

	if (fc->default_permissions) {
		err = FUNC5(inode, mask);

		/* If permission is denied, try to refresh file
		   attributes.  This is also needed, because the root
		   node will at first have no permissions */
		if (err == -EACCES && !refreshed) {
			err = FUNC4(inode, mask);
			if (!err)
				err = FUNC5(inode, mask);
		}

		/* Note: the opposite of the above test does not
		   exist.  So if permissions are revoked this won't be
		   noticed immediately, only after the attribute
		   timeout has expired */
	} else if (mask & (MAY_ACCESS | MAY_CHDIR)) {
		err = FUNC2(inode, mask);
	} else if ((mask & MAY_EXEC) && FUNC1(inode->i_mode)) {
		if (!(inode->i_mode & S_IXUGO)) {
			if (refreshed)
				return -EACCES;

			err = FUNC4(inode, mask);
			if (!err && !(inode->i_mode & S_IXUGO))
				return -EACCES;
		}
	}
	return err;
}