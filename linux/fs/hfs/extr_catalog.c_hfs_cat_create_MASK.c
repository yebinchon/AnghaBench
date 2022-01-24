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
typedef  union hfs_cat_rec {int dummy; } hfs_cat_rec ;
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct qstr {int /*<<< orphan*/  name; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; struct super_block* i_sb; int /*<<< orphan*/  i_nlink; } ;
struct hfs_find_data {int /*<<< orphan*/  search_key; TYPE_1__* tree; } ;
struct TYPE_4__ {int /*<<< orphan*/  cat_tree; } ;
struct TYPE_3__ {int depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAT_MOD ; 
 int EEXIST ; 
 int ENOENT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  HFS_CDR_FTH ; 
 int /*<<< orphan*/  HFS_CDR_THD ; 
 scalar_t__ HFS_MAX_VALENCE ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (struct hfs_find_data*) ; 
 int FUNC5 (struct hfs_find_data*,union hfs_cat_rec*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr const*) ; 
 int FUNC8 (union hfs_cat_rec*,int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC9 (struct super_block*,union hfs_cat_rec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hfs_find_data*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 

int FUNC14(u32 cnid, struct inode *dir, const struct qstr *str, struct inode *inode)
{
	struct hfs_find_data fd;
	struct super_block *sb;
	union hfs_cat_rec entry;
	int entry_size;
	int err;

	FUNC10(CAT_MOD, "create_cat: %s,%u(%d)\n",
		str->name, cnid, inode->i_nlink);
	if (dir->i_size >= HFS_MAX_VALENCE)
		return -ENOSPC;

	sb = dir->i_sb;
	err = FUNC12(FUNC0(sb)->cat_tree, &fd);
	if (err)
		return err;

	/*
	 * Fail early and avoid ENOSPC during the btree operations. We may
	 * have to split the root node at most once.
	 */
	err = FUNC3(fd.tree, 2 * fd.tree->depth);
	if (err)
		goto err2;

	FUNC7(sb, fd.search_key, cnid, NULL);
	entry_size = FUNC9(sb, &entry, FUNC1(inode->i_mode) ?
			HFS_CDR_THD : HFS_CDR_FTH,
			dir->i_ino, str);
	err = FUNC4(&fd);
	if (err != -ENOENT) {
		if (!err)
			err = -EEXIST;
		goto err2;
	}
	err = FUNC5(&fd, &entry, entry_size);
	if (err)
		goto err2;

	FUNC7(sb, fd.search_key, dir->i_ino, str);
	entry_size = FUNC8(&entry, cnid, inode);
	err = FUNC4(&fd);
	if (err != -ENOENT) {
		/* panic? */
		if (!err)
			err = -EEXIST;
		goto err1;
	}
	err = FUNC5(&fd, &entry, entry_size);
	if (err)
		goto err1;

	dir->i_size++;
	dir->i_mtime = dir->i_ctime = FUNC2(dir);
	FUNC13(dir);
	FUNC11(&fd);
	return 0;

err1:
	FUNC7(sb, fd.search_key, cnid, NULL);
	if (!FUNC4(&fd))
		FUNC6(&fd);
err2:
	FUNC11(&fd);
	return err;
}