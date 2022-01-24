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
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  OVL_INDEX ; 
 scalar_t__ FUNC0 (int) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 struct cred* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct cred const*) ; 

int FUNC12(struct dentry *dentry)
{
	struct inode *inode = FUNC1(dentry);
	const struct cred *old_cred;
	int err;

	if (FUNC0(!inode))
		return -ENOENT;

	/*
	 * With inodes index is enabled, we store the union overlay nlink
	 * in an xattr on the index inode. When whiting out an indexed lower,
	 * we need to decrement the overlay persistent nlink, but before the
	 * first copy up, we have no upper index inode to store the xattr.
	 *
	 * As a workaround, before whiteout/rename over an indexed lower,
	 * copy up to create the upper index. Creating the upper index will
	 * initialize the overlay nlink, so it could be dropped if unlink
	 * or rename succeeds.
	 *
	 * TODO: implement metadata only index copy up when called with
	 *       ovl_copy_up_flags(dentry, O_PATH).
	 */
	if (FUNC7(dentry) && !FUNC4(dentry)) {
		err = FUNC3(dentry);
		if (err)
			return err;
	}

	err = FUNC5(inode);
	if (err)
		return err;

	if (FUNC2(dentry) || !FUNC10(OVL_INDEX, inode))
		goto out;

	old_cred = FUNC8(dentry->d_sb);
	/*
	 * The overlay inode nlink should be incremented/decremented IFF the
	 * upper operation succeeds, along with nlink change of upper inode.
	 * Therefore, before link/unlink/rename, we store the union nlink
	 * value relative to the upper inode nlink in an upper inode xattr.
	 */
	err = FUNC9(dentry);
	FUNC11(old_cred);

out:
	if (err)
		FUNC6(inode);

	return err;
}