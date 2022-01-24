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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {unsigned long len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; } ;
struct ubifs_ino_node {int dummy; } ;
struct ubifs_info {int dummy; } ;
struct fsck_inode {int dummy; } ;
struct fsck_data {int dummy; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct fsck_inode* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct fsck_inode*) ; 
 unsigned long FUNC2 (struct fsck_inode*) ; 
 unsigned long UBIFS_INO_NODE_SZ ; 
 struct fsck_inode* FUNC3 (struct ubifs_info*,struct fsck_data*,struct ubifs_ino_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,union ubifs_key*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_ino_node*) ; 
 struct ubifs_ino_node* FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 struct fsck_inode* FUNC7 (struct fsck_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*,char*,unsigned long,...) ; 
 int FUNC9 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ; 
 int FUNC10 (struct ubifs_info*,struct ubifs_zbranch*,struct ubifs_ino_node*) ; 

__attribute__((used)) static struct fsck_inode *FUNC11(struct ubifs_info *c,
					 struct fsck_data *fsckd, ino_t inum)
{
	int n, err;
	union ubifs_key key;
	struct ubifs_znode *znode;
	struct ubifs_zbranch *zbr;
	struct ubifs_ino_node *ino;
	struct fsck_inode *fscki;

	fscki = FUNC7(fsckd, inum);
	if (fscki)
		return fscki;

	FUNC4(c, &key, inum);
	err = FUNC9(c, &key, &znode, &n);
	if (!err) {
		FUNC8(c, "inode %lu not found in index", (unsigned long)inum);
		return FUNC0(-ENOENT);
	} else if (err < 0) {
		FUNC8(c, "error %d while looking up inode %lu",
			  err, (unsigned long)inum);
		return FUNC0(err);
	}

	zbr = &znode->zbranch[n];
	if (zbr->len < UBIFS_INO_NODE_SZ) {
		FUNC8(c, "bad node %lu node length %d",
			  (unsigned long)inum, zbr->len);
		return FUNC0(-EINVAL);
	}

	ino = FUNC6(zbr->len, GFP_NOFS);
	if (!ino)
		return FUNC0(-ENOMEM);

	err = FUNC10(c, zbr, ino);
	if (err) {
		FUNC8(c, "cannot read inode node at LEB %d:%d, error %d",
			  zbr->lnum, zbr->offs, err);
		FUNC5(ino);
		return FUNC0(err);
	}

	fscki = FUNC3(c, fsckd, ino);
	FUNC5(ino);
	if (FUNC1(fscki)) {
		FUNC8(c, "error %ld while adding inode %lu node",
			  FUNC2(fscki), (unsigned long)inum);
		return fscki;
	}

	return fscki;
}