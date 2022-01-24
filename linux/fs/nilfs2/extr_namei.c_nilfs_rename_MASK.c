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
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_dir_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; void* i_ctime; int /*<<< orphan*/  i_mode; } ;
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
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_dir_entry*,struct page*) ; 
 struct nilfs_dir_entry* FUNC8 (struct inode*,struct page**) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 struct nilfs_dir_entry* FUNC10 (struct inode*,int /*<<< orphan*/ *,struct page**) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct nilfs_dir_entry*,struct page*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct inode *old_dir, struct dentry *old_dentry,
			struct inode *new_dir,	struct dentry *new_dentry,
			unsigned int flags)
{
	struct inode *old_inode = FUNC2(old_dentry);
	struct inode *new_inode = FUNC2(new_dentry);
	struct page *dir_page = NULL;
	struct nilfs_dir_entry *dir_de = NULL;
	struct page *old_page;
	struct nilfs_dir_entry *old_de;
	struct nilfs_transaction_info ti;
	int err;

	if (flags & ~RENAME_NOREPLACE)
		return -EINVAL;

	err = FUNC14(old_dir->i_sb, &ti, 1);
	if (FUNC17(err))
		return err;

	err = -ENOENT;
	old_de = FUNC10(old_dir, &old_dentry->d_name, &old_page);
	if (!old_de)
		goto out;

	if (FUNC0(old_inode->i_mode)) {
		err = -EIO;
		dir_de = FUNC8(old_inode, &dir_page);
		if (!dir_de)
			goto out_old;
	}

	if (new_inode) {
		struct page *new_page;
		struct nilfs_dir_entry *new_de;

		err = -ENOTEMPTY;
		if (dir_de && !FUNC9(new_inode))
			goto out_dir;

		err = -ENOENT;
		new_de = FUNC10(new_dir, &new_dentry->d_name, &new_page);
		if (!new_de)
			goto out_dir;
		FUNC12(new_dir, new_de, new_page, old_inode);
		FUNC11(new_dir);
		new_inode->i_ctime = FUNC1(new_inode);
		if (dir_de)
			FUNC3(new_inode);
		FUNC3(new_inode);
		FUNC11(new_inode);
	} else {
		err = FUNC6(new_dentry, old_inode);
		if (err)
			goto out_dir;
		if (dir_de) {
			FUNC4(new_dir);
			FUNC11(new_dir);
		}
	}

	/*
	 * Like most other Unix systems, set the ctime for inodes on a
	 * rename.
	 */
	old_inode->i_ctime = FUNC1(old_inode);

	FUNC7(old_de, old_page);

	if (dir_de) {
		FUNC12(old_inode, dir_de, dir_page, new_dir);
		FUNC3(old_dir);
	}
	FUNC11(old_dir);
	FUNC11(old_inode);

	err = FUNC15(old_dir->i_sb);
	return err;

out_dir:
	if (dir_de) {
		FUNC5(dir_page);
		FUNC16(dir_page);
	}
out_old:
	FUNC5(old_page);
	FUNC16(old_page);
out:
	FUNC13(old_dir->i_sb);
	return err;
}