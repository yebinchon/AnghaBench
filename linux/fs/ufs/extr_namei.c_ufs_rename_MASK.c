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
struct ufs_dir_entry {int dummy; } ;
struct page {int dummy; } ;
struct inode {void* i_ctime; int /*<<< orphan*/  i_mode; } ;
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
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct ufs_dir_entry*,struct page*) ; 
 struct ufs_dir_entry* FUNC11 (struct inode*,struct page**) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 struct ufs_dir_entry* FUNC13 (struct inode*,int /*<<< orphan*/ *,struct page**) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct ufs_dir_entry*,struct page*,struct inode*,int) ; 

__attribute__((used)) static int FUNC15(struct inode *old_dir, struct dentry *old_dentry,
		      struct inode *new_dir, struct dentry *new_dentry,
		      unsigned int flags)
{
	struct inode *old_inode = FUNC2(old_dentry);
	struct inode *new_inode = FUNC2(new_dentry);
	struct page *dir_page = NULL;
	struct ufs_dir_entry * dir_de = NULL;
	struct page *old_page;
	struct ufs_dir_entry *old_de;
	int err = -ENOENT;

	if (flags & ~RENAME_NOREPLACE)
		return -EINVAL;

	old_de = FUNC13(old_dir, &old_dentry->d_name, &old_page);
	if (!old_de)
		goto out;

	if (FUNC0(old_inode->i_mode)) {
		err = -EIO;
		dir_de = FUNC11(old_inode, &dir_page);
		if (!dir_de)
			goto out_old;
	}

	if (new_inode) {
		struct page *new_page;
		struct ufs_dir_entry *new_de;

		err = -ENOTEMPTY;
		if (dir_de && !FUNC12(new_inode))
			goto out_dir;

		err = -ENOENT;
		new_de = FUNC13(new_dir, &new_dentry->d_name, &new_page);
		if (!new_de)
			goto out_dir;
		FUNC14(new_dir, new_de, new_page, old_inode, 1);
		new_inode->i_ctime = FUNC1(new_inode);
		if (dir_de)
			FUNC3(new_inode);
		FUNC4(new_inode);
	} else {
		err = FUNC9(new_dentry, old_inode);
		if (err)
			goto out_dir;
		if (dir_de)
			FUNC5(new_dir);
	}

	/*
	 * Like most other Unix systems, set the ctime for inodes on a
 	 * rename.
	 */
	old_inode->i_ctime = FUNC1(old_inode);

	FUNC10(old_dir, old_de, old_page);
	FUNC7(old_inode);

	if (dir_de) {
		if (old_dir != new_dir)
			FUNC14(old_inode, dir_de, dir_page, new_dir, 0);
		else {
			FUNC6(dir_page);
			FUNC8(dir_page);
		}
		FUNC4(old_dir);
	}
	return 0;


out_dir:
	if (dir_de) {
		FUNC6(dir_page);
		FUNC8(dir_page);
	}
out_old:
	FUNC6(old_page);
	FUNC8(old_page);
out:
	return err;
}