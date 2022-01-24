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
struct inode {int i_nlink; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct fscrypt_name {int /*<<< orphan*/  disk_name; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENODATA ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 scalar_t__ UBIFS_MAX_NLEN ; 
 int /*<<< orphan*/  UBIFS_MAX_XENT_NODE_SZ ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct fscrypt_name*) ; 
 struct inode* FUNC5 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_dent_node*) ; 
 struct ubifs_dent_node* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ubifs_info*,struct inode*,struct inode*,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct ubifs_info*,int) ; 
 int FUNC15 (struct ubifs_info*,union ubifs_key*,struct ubifs_dent_node*,struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC16 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,struct fscrypt_name*) ; 

__attribute__((used)) static int FUNC17(struct inode *host, const char *name)
{
	struct inode *inode;
	struct ubifs_info *c = host->i_sb->s_fs_info;
	struct fscrypt_name nm = { .disk_name = FUNC0((char *)name, FUNC13(name))};
	struct ubifs_dent_node *xent;
	union ubifs_key key;
	int err;

	FUNC14(c, FUNC6(host));

	if (FUNC4(&nm) > UBIFS_MAX_NLEN)
		return -ENAMETOOLONG;

	xent = FUNC9(UBIFS_MAX_XENT_NODE_SZ, GFP_NOFS);
	if (!xent)
		return -ENOMEM;

	FUNC16(c, &key, host->i_ino, &nm);
	err = FUNC15(c, &key, xent, &nm);
	if (err) {
		if (err == -ENOENT)
			err = -ENODATA;
		goto out_free;
	}

	inode = FUNC5(c, FUNC10(xent->inum));
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		goto out_free;
	}

	FUNC14(c, inode->i_nlink == 1);
	FUNC3(inode);
	err = FUNC11(c, host, inode, &nm);
	if (err)
		FUNC12(inode, 1);

	/* If @i_nlink is 0, 'iput()' will delete the inode */
	FUNC7(inode);

out_free:
	FUNC8(xent);
	return err;
}