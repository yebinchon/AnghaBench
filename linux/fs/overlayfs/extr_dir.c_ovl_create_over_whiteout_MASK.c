#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct posix_acl {int dummy; } ;
struct ovl_cattr {scalar_t__ mode; int /*<<< orphan*/  hardlink; } ;
struct inode {scalar_t__ i_mode; } ;
struct iattr {scalar_t__ ia_mode; int /*<<< orphan*/  ia_valid; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {struct inode* d_inode; TYPE_1__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_MODE ; 
 int EROFS ; 
 int ESTALE ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  RENAME_EXCHANGE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  XATTR_NAME_POSIX_ACL_ACCESS ; 
 int /*<<< orphan*/  XATTR_NAME_POSIX_ACL_DEFAULT ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 struct dentry* FUNC11 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct dentry*,struct iattr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct dentry*) ; 
 struct dentry* FUNC14 (struct dentry*,struct ovl_cattr*) ; 
 struct dentry* FUNC15 (TYPE_2__*) ; 
 int FUNC16 (struct inode*,struct dentry*,struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct dentry*,struct inode*,struct dentry*,int) ; 
 int FUNC18 (struct dentry*,struct dentry*) ; 
 int FUNC19 (struct dentry*,struct dentry*) ; 
 int FUNC20 (struct dentry*,int /*<<< orphan*/ ,struct posix_acl*) ; 
 struct dentry* FUNC21 (struct dentry*) ; 
 int FUNC22 (int /*<<< orphan*/ ,scalar_t__*,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC23 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC24 (struct dentry*,struct dentry*) ; 

__attribute__((used)) static int FUNC25(struct dentry *dentry, struct inode *inode,
				    struct ovl_cattr *cattr)
{
	struct dentry *workdir = FUNC21(dentry);
	struct inode *wdir = workdir->d_inode;
	struct dentry *upperdir = FUNC15(dentry->d_parent);
	struct inode *udir = upperdir->d_inode;
	struct dentry *upper;
	struct dentry *newdentry;
	int err;
	struct posix_acl *acl, *default_acl;
	bool hardlink = !!cattr->hardlink;

	if (FUNC5(!workdir))
		return -EROFS;

	if (!hardlink) {
		err = FUNC22(dentry->d_parent->d_inode,
				       &cattr->mode, &default_acl, &acl);
		if (err)
			return err;
	}

	err = FUNC18(workdir, upperdir);
	if (err)
		goto out;

	upper = FUNC11(dentry->d_name.name, upperdir,
			       dentry->d_name.len);
	err = FUNC2(upper);
	if (FUNC0(upper))
		goto out_unlock;

	err = -ESTALE;
	if (FUNC7(upper) || !FUNC1(FUNC6(upper)))
		goto out_dput;

	newdentry = FUNC14(workdir, cattr);
	err = FUNC2(newdentry);
	if (FUNC0(newdentry))
		goto out_dput;

	/*
	 * mode could have been mutilated due to umask (e.g. sgid directory)
	 */
	if (!hardlink &&
	    !FUNC4(cattr->mode) &&
	    newdentry->d_inode->i_mode != cattr->mode) {
		struct iattr attr = {
			.ia_valid = ATTR_MODE,
			.ia_mode = cattr->mode,
		};
		FUNC9(newdentry->d_inode);
		err = FUNC12(newdentry, &attr, NULL);
		FUNC10(newdentry->d_inode);
		if (err)
			goto out_cleanup;
	}
	if (!hardlink) {
		err = FUNC20(newdentry, XATTR_NAME_POSIX_ACL_ACCESS,
					acl);
		if (err)
			goto out_cleanup;

		err = FUNC20(newdentry, XATTR_NAME_POSIX_ACL_DEFAULT,
					default_acl);
		if (err)
			goto out_cleanup;
	}

	if (!hardlink && FUNC3(cattr->mode)) {
		err = FUNC19(dentry, newdentry);
		if (err)
			goto out_cleanup;

		err = FUNC16(wdir, newdentry, udir, upper,
				    RENAME_EXCHANGE);
		if (err)
			goto out_cleanup;

		FUNC13(wdir, upper);
	} else {
		err = FUNC16(wdir, newdentry, udir, upper, 0);
		if (err)
			goto out_cleanup;
	}
	err = FUNC17(dentry, inode, newdentry, hardlink);
	if (err)
		goto out_cleanup;
out_dput:
	FUNC8(upper);
out_unlock:
	FUNC24(workdir, upperdir);
out:
	if (!hardlink) {
		FUNC23(acl);
		FUNC23(default_acl);
	}
	return err;

out_cleanup:
	FUNC13(wdir, newdentry);
	FUNC8(newdentry);
	goto out_dput;
}