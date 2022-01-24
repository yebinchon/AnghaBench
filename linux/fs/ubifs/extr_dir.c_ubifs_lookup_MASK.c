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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int /*<<< orphan*/  inum; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; TYPE_1__* i_sb; } ;
struct fscrypt_name {int /*<<< orphan*/  minor_hash; scalar_t__ hash; } ;
struct dentry {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPERM ; 
 struct inode* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UBIFS_MAX_DENT_NODE_SZ ; 
 scalar_t__ UBIFS_MAX_NLEN ; 
 struct inode* FUNC5 (struct inode*,struct inode*) ; 
 scalar_t__ FUNC6 (struct ubifs_info*,struct ubifs_dent_node*,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (struct fscrypt_name*) ; 
 int /*<<< orphan*/ * FUNC11 (struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC12 (struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct inode*) ; 
 int FUNC14 (struct inode*,struct inode*,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ubifs_info*,int) ; 
 scalar_t__ FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct ubifs_info*,char*,struct inode*,int) ; 
 struct inode* FUNC22 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct ubifs_info*,int) ; 
 int FUNC24 (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC26 (struct ubifs_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC27(struct inode *dir, struct dentry *dentry,
				   unsigned int flags)
{
	int err;
	union ubifs_key key;
	struct inode *inode = NULL;
	struct ubifs_dent_node *dent = NULL;
	struct ubifs_info *c = dir->i_sb->s_fs_info;
	struct fscrypt_name nm;

	FUNC7("'%pd' in dir ino %lu", dentry, dir->i_ino);

	err = FUNC14(dir, dentry, &nm);
	if (err == -ENOENT)
		return FUNC5(NULL, dentry);
	if (err)
		return FUNC0(err);

	if (FUNC10(&nm) > UBIFS_MAX_NLEN) {
		inode = FUNC0(-ENAMETOOLONG);
		goto done;
	}

	dent = FUNC17(UBIFS_MAX_DENT_NODE_SZ, GFP_NOFS);
	if (!dent) {
		inode = FUNC0(-ENOMEM);
		goto done;
	}

	if (nm.hash) {
		FUNC19(c, FUNC10(&nm) == 0);
		FUNC19(c, FUNC11(&nm) == NULL);
		FUNC9(c, &key, dir->i_ino, nm.hash);
		err = FUNC24(c, &key, dent, nm.minor_hash);
	} else {
		FUNC8(c, &key, dir->i_ino, &nm);
		err = FUNC25(c, &key, dent, &nm);
	}

	if (err) {
		if (err == -ENOENT)
			FUNC7("not found");
		else
			inode = FUNC0(err);
		goto done;
	}

	if (FUNC6(c, dent, &nm)) {
		inode = FUNC0(-EINVAL);
		goto done;
	}

	inode = FUNC22(dir->i_sb, FUNC18(dent->inum));
	if (FUNC1(inode)) {
		/*
		 * This should not happen. Probably the file-system needs
		 * checking.
		 */
		err = FUNC2(inode);
		FUNC21(c, "dead directory entry '%pd', error %d",
			  dentry, err);
		FUNC23(c, err);
		goto done;
	}

	if (FUNC20(dir) &&
	    (FUNC3(inode->i_mode) || FUNC4(inode->i_mode)) &&
	    !FUNC13(dir, inode)) {
		FUNC26(c, "Inconsistent encryption contexts: %lu/%lu",
			   dir->i_ino, inode->i_ino);
		FUNC15(inode);
		inode = FUNC0(-EPERM);
	}

done:
	FUNC16(dent);
	FUNC12(&nm);
	return FUNC5(inode, dentry);
}