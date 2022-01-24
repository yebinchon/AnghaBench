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
struct ovl_cattr {int /*<<< orphan*/  mode; int /*<<< orphan*/  hardlink; } ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct dentry {int /*<<< orphan*/  d_name; int /*<<< orphan*/  d_sb; struct dentry* d_parent; } ;
struct cred {int /*<<< orphan*/  fsgid; int /*<<< orphan*/  fsuid; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct cred* FUNC0 (struct cred*) ; 
 int FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*,struct inode*,struct ovl_cattr*) ; 
 int FUNC3 (struct dentry*,struct inode*,struct ovl_cattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct cred* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dentry*,int /*<<< orphan*/ ) ; 
 struct cred* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct cred*) ; 
 int /*<<< orphan*/  FUNC10 (struct cred const*) ; 
 int FUNC11 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct cred const*,struct cred*) ; 

__attribute__((used)) static int FUNC12(struct dentry *dentry, struct inode *inode,
			      struct ovl_cattr *attr, bool origin)
{
	int err;
	const struct cred *old_cred;
	struct cred *override_cred;
	struct dentry *parent = dentry->d_parent;

	err = FUNC1(parent);
	if (err)
		return err;

	old_cred = FUNC6(dentry->d_sb);

	/*
	 * When linking a file with copy up origin into a new parent, mark the
	 * new parent dir "impure".
	 */
	if (origin) {
		err = FUNC7(parent, FUNC5(parent));
		if (err)
			goto out_revert_creds;
	}

	err = -ENOMEM;
	override_cred = FUNC8();
	if (override_cred) {
		override_cred->fsuid = inode->i_uid;
		override_cred->fsgid = inode->i_gid;
		if (!attr->hardlink) {
			err = FUNC11(dentry,
					attr->mode, &dentry->d_name, old_cred,
					override_cred);
			if (err) {
				FUNC9(override_cred);
				goto out_revert_creds;
			}
		}
		FUNC9(FUNC0(override_cred));
		FUNC9(override_cred);

		if (!FUNC4(dentry))
			err = FUNC3(dentry, inode, attr);
		else
			err = FUNC2(dentry, inode, attr);
	}
out_revert_creds:
	FUNC10(old_cred);
	return err;
}