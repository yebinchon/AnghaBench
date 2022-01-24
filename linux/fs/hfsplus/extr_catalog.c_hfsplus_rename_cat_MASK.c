#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct qstr {int /*<<< orphan*/  name; } ;
struct inode {int /*<<< orphan*/  i_ino; void* i_ctime; void* i_mtime; int /*<<< orphan*/  i_size; struct super_block* i_sb; } ;
struct hfs_find_data {int entrylength; int /*<<< orphan*/  bnode; int /*<<< orphan*/  search_key; int /*<<< orphan*/  entryoffset; TYPE_5__* tree; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ hfsplus_cat_entry ;
typedef  int /*<<< orphan*/  entry ;
struct TYPE_9__ {int /*<<< orphan*/  cat_tree; } ;
struct TYPE_8__ {scalar_t__ depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAT_MOD ; 
 int EEXIST ; 
 int EIO ; 
 int ENOENT ; 
 int HFSPLUS_FOLDER ; 
 int /*<<< orphan*/  HFSPLUS_I_CAT_DIRTY ; 
 TYPE_6__* FUNC0 (struct super_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct inode*) ; 
 int FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct hfs_find_data*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct hfs_find_data*,TYPE_1__*,int) ; 
 int FUNC9 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hfs_find_data*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int /*<<< orphan*/  hfs_find_rec_by_key ; 
 int FUNC13 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct super_block*,TYPE_1__*,int,int /*<<< orphan*/ ,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 scalar_t__ FUNC19 (int) ; 

int FUNC20(u32 cnid,
		       struct inode *src_dir, const struct qstr *src_name,
		       struct inode *dst_dir, const struct qstr *dst_name)
{
	struct super_block *sb = src_dir->i_sb;
	struct hfs_find_data src_fd, dst_fd;
	hfsplus_cat_entry entry;
	int entry_size, type;
	int err;

	FUNC10(CAT_MOD, "rename_cat: %u - %lu,%s - %lu,%s\n",
		cnid, src_dir->i_ino, src_name->name,
		dst_dir->i_ino, dst_name->name);
	err = FUNC12(FUNC0(sb)->cat_tree, &src_fd);
	if (err)
		return err;
	dst_fd = src_fd;

	/*
	 * Fail early and avoid ENOSPC during the btree operations. We may
	 * have to split the root node at most twice.
	 */
	err = FUNC3(src_fd.tree, 4 * (int)src_fd.tree->depth - 1);
	if (err)
		goto out;

	/* find the old dir entry and read the data */
	err = FUNC13(sb, src_fd.search_key,
			src_dir->i_ino, src_name);
	if (FUNC19(err))
		goto out;

	err = FUNC7(&src_fd, hfs_find_rec_by_key);
	if (err)
		goto out;
	if (src_fd.entrylength > sizeof(entry) || src_fd.entrylength < 0) {
		err = -EIO;
		goto out;
	}

	FUNC5(src_fd.bnode, &entry, src_fd.entryoffset,
				src_fd.entrylength);
	type = FUNC1(entry.type);

	/* create new dir entry with the data from the old entry */
	err = FUNC13(sb, dst_fd.search_key,
			dst_dir->i_ino, dst_name);
	if (FUNC19(err))
		goto out;

	err = FUNC7(&dst_fd, hfs_find_rec_by_key);
	if (err != -ENOENT) {
		if (!err)
			err = -EEXIST;
		goto out;
	}

	err = FUNC8(&dst_fd, &entry, src_fd.entrylength);
	if (err)
		goto out;
	dst_dir->i_size++;
	if (type == HFSPLUS_FOLDER)
		FUNC18(dst_dir);
	dst_dir->i_mtime = dst_dir->i_ctime = FUNC2(dst_dir);

	/* finally remove the old entry */
	err = FUNC13(sb, src_fd.search_key,
			src_dir->i_ino, src_name);
	if (FUNC19(err))
		goto out;

	err = FUNC7(&src_fd, hfs_find_rec_by_key);
	if (err)
		goto out;
	err = FUNC9(&src_fd);
	if (err)
		goto out;
	src_dir->i_size--;
	if (type == HFSPLUS_FOLDER)
		FUNC17(src_dir);
	src_dir->i_mtime = src_dir->i_ctime = FUNC2(src_dir);

	/* remove old thread entry */
	FUNC14(sb, src_fd.search_key, cnid);
	err = FUNC7(&src_fd, hfs_find_rec_by_key);
	if (err)
		goto out;
	type = FUNC6(src_fd.bnode, src_fd.entryoffset);
	err = FUNC9(&src_fd);
	if (err)
		goto out;

	/* create new thread entry */
	FUNC14(sb, dst_fd.search_key, cnid);
	entry_size = FUNC15(sb, &entry, type,
		dst_dir->i_ino, dst_name);
	if (FUNC19(entry_size < 0)) {
		err = entry_size;
		goto out;
	}

	err = FUNC7(&dst_fd, hfs_find_rec_by_key);
	if (err != -ENOENT) {
		if (!err)
			err = -EEXIST;
		goto out;
	}
	err = FUNC8(&dst_fd, &entry, entry_size);

	FUNC16(dst_dir, HFSPLUS_I_CAT_DIRTY);
	FUNC16(src_dir, HFSPLUS_I_CAT_DIRTY);
out:
	FUNC4(dst_fd.bnode);
	FUNC11(&src_fd);
	return err;
}