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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct qstr {int /*<<< orphan*/  name; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_nlink; struct super_block* i_sb; } ;
struct hfs_find_data {int /*<<< orphan*/  search_key; TYPE_1__* tree; } ;
typedef  int /*<<< orphan*/  hfsplus_cat_entry ;
struct TYPE_4__ {int /*<<< orphan*/  cat_tree; } ;
struct TYPE_3__ {int depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAT_MOD ; 
 int EEXIST ; 
 int ENOENT ; 
 int /*<<< orphan*/  HFSPLUS_FILE_THREAD ; 
 int /*<<< orphan*/  HFSPLUS_FOLDER_THREAD ; 
 int /*<<< orphan*/  HFSPLUS_I_CAT_DIRTY ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (struct hfs_find_data*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hfs_find_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hfs_find_data*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  hfs_find_rec_by_key ; 
 int FUNC10 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC13 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 scalar_t__ FUNC16 (int) ; 

int FUNC17(u32 cnid, struct inode *dir,
		const struct qstr *str, struct inode *inode)
{
	struct super_block *sb = dir->i_sb;
	struct hfs_find_data fd;
	hfsplus_cat_entry entry;
	int entry_size;
	int err;

	FUNC7(CAT_MOD, "create_cat: %s,%u(%d)\n",
		str->name, cnid, inode->i_nlink);
	err = FUNC9(FUNC0(sb)->cat_tree, &fd);
	if (err)
		return err;

	/*
	 * Fail early and avoid ENOSPC during the btree operations. We may
	 * have to split the root node at most once.
	 */
	err = FUNC3(fd.tree, 2 * fd.tree->depth);
	if (err)
		goto err2;

	FUNC11(sb, fd.search_key, cnid);
	entry_size = FUNC13(sb, &entry,
		FUNC1(inode->i_mode) ?
			HFSPLUS_FOLDER_THREAD : HFSPLUS_FILE_THREAD,
		dir->i_ino, str);
	if (FUNC16(entry_size < 0)) {
		err = entry_size;
		goto err2;
	}

	err = FUNC4(&fd, hfs_find_rec_by_key);
	if (err != -ENOENT) {
		if (!err)
			err = -EEXIST;
		goto err2;
	}
	err = FUNC5(&fd, &entry, entry_size);
	if (err)
		goto err2;

	err = FUNC10(sb, fd.search_key, dir->i_ino, str);
	if (FUNC16(err))
		goto err1;

	entry_size = FUNC12(&entry, cnid, inode);
	err = FUNC4(&fd, hfs_find_rec_by_key);
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
	if (FUNC1(inode->i_mode))
		FUNC15(dir);
	dir->i_mtime = dir->i_ctime = FUNC2(dir);
	FUNC14(dir, HFSPLUS_I_CAT_DIRTY);

	FUNC8(&fd);
	return 0;

err1:
	FUNC11(sb, fd.search_key, cnid);
	if (!FUNC4(&fd, hfs_find_rec_by_key))
		FUNC6(&fd);
err2:
	FUNC8(&fd);
	return err;
}