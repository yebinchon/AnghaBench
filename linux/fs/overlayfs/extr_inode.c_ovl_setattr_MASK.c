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
struct inode {int /*<<< orphan*/  i_writecount; } ;
struct iattr {int ia_valid; } ;
struct dentry {int /*<<< orphan*/  d_inode; int /*<<< orphan*/  d_sb; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ATTR_KILL_SGID ; 
 int ATTR_KILL_SUID ; 
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 int ETXTBSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dentry*,struct iattr*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct dentry*) ; 
 int FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC9 (struct dentry*) ; 
 struct dentry* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 struct cred* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct cred const*) ; 
 int FUNC16 (struct dentry*,struct iattr*) ; 

int FUNC17(struct dentry *dentry, struct iattr *attr)
{
	int err;
	bool full_copy_up = false;
	struct dentry *upperdentry;
	const struct cred *old_cred;

	err = FUNC16(dentry, attr);
	if (err)
		return err;

	err = FUNC13(dentry);
	if (err)
		goto out;

	if (attr->ia_valid & ATTR_SIZE) {
		struct inode *realinode = FUNC1(FUNC9(dentry));

		err = -ETXTBSY;
		if (FUNC0(&realinode->i_writecount) < 0)
			goto out_drop_write;

		/* Truncate should trigger data copy up as well */
		full_copy_up = true;
	}

	if (!full_copy_up)
		err = FUNC6(dentry);
	else
		err = FUNC7(dentry);
	if (!err) {
		struct inode *winode = NULL;

		upperdentry = FUNC10(dentry);

		if (attr->ia_valid & ATTR_SIZE) {
			winode = FUNC1(upperdentry);
			err = FUNC2(winode);
			if (err)
				goto out_drop_write;
		}

		if (attr->ia_valid & (ATTR_KILL_SUID|ATTR_KILL_SGID))
			attr->ia_valid &= ~ATTR_MODE;

		FUNC3(upperdentry->d_inode);
		old_cred = FUNC12(dentry->d_sb);
		err = FUNC5(upperdentry, attr, NULL);
		FUNC15(old_cred);
		if (!err)
			FUNC8(upperdentry->d_inode, dentry->d_inode);
		FUNC4(upperdentry->d_inode);

		if (winode)
			FUNC14(winode);
	}
out_drop_write:
	FUNC11(dentry);
out:
	return err;
}