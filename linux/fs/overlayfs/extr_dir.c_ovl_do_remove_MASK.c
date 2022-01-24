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
struct dentry {int /*<<< orphan*/  d_inode; int /*<<< orphan*/  d_sb; int /*<<< orphan*/  d_parent; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dentry*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int FUNC12 (struct dentry*) ; 
 struct cred* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct dentry*) ; 
 int FUNC15 (struct dentry*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct dentry*,int,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC18 (struct cred const*) ; 

__attribute__((used)) static int FUNC19(struct dentry *dentry, bool is_dir)
{
	int err;
	const struct cred *old_cred;
	struct dentry *upperdentry;
	bool lower_positive = FUNC10(dentry);
	FUNC0(list);

	/* No need to clean pure upper removed by vfs_rmdir() */
	if (is_dir && (lower_positive || !FUNC14(dentry))) {
		err = FUNC5(dentry, &list);
		if (err)
			goto out;
	}

	err = FUNC17(dentry);
	if (err)
		goto out;

	err = FUNC6(dentry->d_parent);
	if (err)
		goto out_drop_write;

	err = FUNC12(dentry);
	if (err)
		goto out_drop_write;

	old_cred = FUNC13(dentry->d_sb);
	if (!lower_positive)
		err = FUNC16(dentry, is_dir, &list);
	else
		err = FUNC15(dentry, &list);
	FUNC18(old_cred);
	if (!err) {
		if (is_dir)
			FUNC1(dentry->d_inode);
		else
			FUNC3(dentry->d_inode);
	}
	FUNC11(dentry);

	/*
	 * Copy ctime
	 *
	 * Note: we fail to update ctime if there was no copy-up, only a
	 * whiteout
	 */
	upperdentry = FUNC8(dentry);
	if (upperdentry)
		FUNC7(FUNC2(upperdentry), FUNC2(dentry));

out_drop_write:
	FUNC9(dentry);
out:
	FUNC4(&list);
	return err;
}