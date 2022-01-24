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
struct inode {scalar_t__ i_sb; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_CHOWN ; 
 int ENOENT ; 
 int EPERM ; 
 int EXDEV ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  MAY_READ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct inode* FUNC5 (struct dentry*) ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct inode*,struct dentry*) ; 
 int FUNC13 (struct dentry*,struct inode*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct dentry *old_dentry, struct inode *dir,
			     struct dentry *new_dentry, bool preserve)
{
	struct inode *inode = FUNC5(old_dentry);
	int error;

	if (!inode)
		return -ENOENT;

	error = FUNC12(dir, new_dentry);
	if (error)
		return error;

	if (dir->i_sb != inode->i_sb)
		return -EXDEV;

	/*
	 * A reflink to an append-only or immutable file cannot be created.
	 */
	if (FUNC0(inode) || FUNC1(inode))
		return -EPERM;

	/* Only regular files can be reflinked. */
	if (!FUNC2(inode->i_mode))
		return -EPERM;

	/*
	 * If the caller wants to preserve ownership, they require the
	 * rights to do so.
	 */
	if (preserve) {
		if (!FUNC14(FUNC4(), inode->i_uid) && !FUNC3(CAP_CHOWN))
			return -EPERM;
		if (!FUNC8(inode->i_gid) && !FUNC3(CAP_CHOWN))
			return -EPERM;
	}

	/*
	 * If the caller is modifying any aspect of the attributes, they
	 * are not creating a snapshot.  They need read permission on the
	 * file.
	 */
	if (!preserve) {
		error = FUNC10(inode, MAY_READ);
		if (error)
			return error;
	}

	FUNC9(inode);
	error = FUNC6(dir);
	if (!error)
		error = FUNC13(old_dentry, dir, new_dentry, preserve);
	FUNC11(inode);
	if (!error)
		FUNC7(dir, new_dentry);
	return error;
}