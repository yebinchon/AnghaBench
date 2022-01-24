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
struct nilfs_dir_entry {int /*<<< orphan*/  inode; } ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nilfs_dir_entry*,struct page*) ; 
 struct nilfs_dir_entry* FUNC4 (struct inode*,int /*<<< orphan*/ *,struct page**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode;
	struct nilfs_dir_entry *de;
	struct page *page;
	int err;

	err = -ENOENT;
	de = FUNC4(dir, &dentry->d_name, &page);
	if (!de)
		goto out;

	inode = FUNC0(dentry);
	err = -EIO;
	if (FUNC2(de->inode) != inode->i_ino)
		goto out;

	if (!inode->i_nlink) {
		FUNC5(inode->i_sb, KERN_WARNING,
			  "deleting nonexistent file (ino=%lu), %d",
			  inode->i_ino, inode->i_nlink);
		FUNC6(inode, 1);
	}
	err = FUNC3(de, page);
	if (err)
		goto out;

	inode->i_ctime = dir->i_ctime;
	FUNC1(inode);
	err = 0;
out:
	return err;
}