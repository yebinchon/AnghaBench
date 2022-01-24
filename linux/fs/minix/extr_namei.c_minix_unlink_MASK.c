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
struct minix_dir_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct minix_dir_entry*,struct page*) ; 
 struct minix_dir_entry* FUNC3 (struct dentry*,struct page**) ; 

__attribute__((used)) static int FUNC4(struct inode * dir, struct dentry *dentry)
{
	int err = -ENOENT;
	struct inode * inode = FUNC0(dentry);
	struct page * page;
	struct minix_dir_entry * de;

	de = FUNC3(dentry, &page);
	if (!de)
		goto end_unlink;

	err = FUNC2(de, page);
	if (err)
		goto end_unlink;

	inode->i_ctime = dir->i_ctime;
	FUNC1(inode);
end_unlink:
	return err;
}