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
struct page {int dummy; } ;
struct inode {void* i_ctime; int /*<<< orphan*/  i_mode; } ;
struct ext2_dir_entry_2 {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 unsigned int RENAME_NOREPLACE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ext2_dir_entry_2*,struct page*) ; 
 struct ext2_dir_entry_2* FUNC7 (struct inode*,struct page**) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct ext2_dir_entry_2* FUNC9 (struct inode*,int /*<<< orphan*/ *,struct page**) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct ext2_dir_entry_2*,struct page*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 

__attribute__((used)) static int FUNC16 (struct inode * old_dir, struct dentry * old_dentry,
			struct inode * new_dir,	struct dentry * new_dentry,
			unsigned int flags)
{
	struct inode * old_inode = FUNC2(old_dentry);
	struct inode * new_inode = FUNC2(new_dentry);
	struct page * dir_page = NULL;
	struct ext2_dir_entry_2 * dir_de = NULL;
	struct page * old_page;
	struct ext2_dir_entry_2 * old_de;
	int err;

	if (flags & ~RENAME_NOREPLACE)
		return -EINVAL;

	err = FUNC3(old_dir);
	if (err)
		goto out;

	err = FUNC3(new_dir);
	if (err)
		goto out;

	old_de = FUNC9 (old_dir, &old_dentry->d_name, &old_page);
	if (!old_de) {
		err = -ENOENT;
		goto out;
	}

	if (FUNC0(old_inode->i_mode)) {
		err = -EIO;
		dir_de = FUNC7(old_inode, &dir_page);
		if (!dir_de)
			goto out_old;
	}

	if (new_inode) {
		struct page *new_page;
		struct ext2_dir_entry_2 *new_de;

		err = -ENOTEMPTY;
		if (dir_de && !FUNC8 (new_inode))
			goto out_dir;

		err = -ENOENT;
		new_de = FUNC9 (new_dir, &new_dentry->d_name, &new_page);
		if (!new_de)
			goto out_dir;
		FUNC10(new_dir, new_de, new_page, old_inode, 1);
		new_inode->i_ctime = FUNC1(new_inode);
		if (dir_de)
			FUNC4(new_inode);
		FUNC11(new_inode);
	} else {
		err = FUNC5(new_dentry, old_inode);
		if (err)
			goto out_dir;
		if (dir_de)
			FUNC12(new_dir);
	}

	/*
	 * Like most other Unix systems, set the ctime for inodes on a
 	 * rename.
	 */
	old_inode->i_ctime = FUNC1(old_inode);
	FUNC14(old_inode);

	FUNC6 (old_de, old_page);

	if (dir_de) {
		if (old_dir != new_dir)
			FUNC10(old_inode, dir_de, dir_page, new_dir, 0);
		else {
			FUNC13(dir_page);
			FUNC15(dir_page);
		}
		FUNC11(old_dir);
	}
	return 0;


out_dir:
	if (dir_de) {
		FUNC13(dir_page);
		FUNC15(dir_page);
	}
out_old:
	FUNC13(old_page);
	FUNC15(old_page);
out:
	return err;
}