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
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int /*<<< orphan*/  disk_name; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENAMETOOLONG ; 
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 size_t UBIFS_MAX_INO_DATA ; 
 scalar_t__ UBIFS_MAX_NLEN ; 
 int /*<<< orphan*/  UBIFS_MAX_XENT_NODE_SZ ; 
 int XATTR_CREATE ; 
 int XATTR_REPLACE ; 
 int FUNC3 (struct ubifs_info*,struct inode*,struct inode*,void const*,size_t) ; 
 int FUNC4 (struct ubifs_info*,struct inode*,struct fscrypt_name*,void const*,size_t) ; 
 scalar_t__ FUNC5 (struct fscrypt_name*) ; 
 struct inode* FUNC6 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct fscrypt_name*) ; 

int FUNC16(struct inode *host, const char *name, const void *value,
		    size_t size, int flags, bool check_lock)
{
	struct inode *inode;
	struct ubifs_info *c = host->i_sb->s_fs_info;
	struct fscrypt_name nm = { .disk_name = FUNC0((char *)name, FUNC12(name))};
	struct ubifs_dent_node *xent;
	union ubifs_key key;
	int err;

	if (check_lock)
		FUNC13(c, FUNC7(host));

	if (size > UBIFS_MAX_INO_DATA)
		return -ERANGE;

	if (FUNC5(&nm) > UBIFS_MAX_NLEN)
		return -ENAMETOOLONG;

	xent = FUNC10(UBIFS_MAX_XENT_NODE_SZ, GFP_NOFS);
	if (!xent)
		return -ENOMEM;

	/*
	 * The extended attribute entries are stored in LNC, so multiple
	 * look-ups do not involve reading the flash.
	 */
	FUNC15(c, &key, host->i_ino, &nm);
	err = FUNC14(c, &key, xent, &nm);
	if (err) {
		if (err != -ENOENT)
			goto out_free;

		if (flags & XATTR_REPLACE)
			/* We are asked not to create the xattr */
			err = -ENODATA;
		else
			err = FUNC4(c, host, &nm, value, size);
		goto out_free;
	}

	if (flags & XATTR_CREATE) {
		/* We are asked not to replace the xattr */
		err = -EEXIST;
		goto out_free;
	}

	inode = FUNC6(c, FUNC11(xent->inum));
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto out_free;
	}

	err = FUNC3(c, host, inode, value, size);
	FUNC8(inode);

out_free:
	FUNC9(xent);
	return err;
}