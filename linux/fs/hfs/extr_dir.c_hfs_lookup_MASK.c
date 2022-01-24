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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  d_name; int /*<<< orphan*/  i_ino; } ;
struct hfs_find_data {TYPE_1__* search_key; } ;
struct dentry {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  d_name; int /*<<< orphan*/  i_ino; } ;
typedef  int /*<<< orphan*/  rec ;
typedef  int /*<<< orphan*/  hfs_cat_rec ;
struct TYPE_4__ {int /*<<< orphan*/  cat_tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  cat; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOENT ; 
 struct inode* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct inode*,struct inode*) ; 
 int FUNC3 (struct hfs_find_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_find_data*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC8(struct inode *dir, struct dentry *dentry,
				 unsigned int flags)
{
	hfs_cat_rec rec;
	struct hfs_find_data fd;
	struct inode *inode = NULL;
	int res;

	res = FUNC6(FUNC1(dir->i_sb)->cat_tree, &fd);
	if (res)
		return FUNC0(res);
	FUNC4(dir->i_sb, fd.search_key, dir->i_ino, &dentry->d_name);
	res = FUNC3(&fd, &rec, sizeof(rec));
	if (res) {
		if (res != -ENOENT)
			inode = FUNC0(res);
	} else {
		inode = FUNC7(dir->i_sb, &fd.search_key->cat, &rec);
		if (!inode)
			inode = FUNC0(-EACCES);
	}
	FUNC5(&fd);
	return FUNC2(inode, dentry);
}