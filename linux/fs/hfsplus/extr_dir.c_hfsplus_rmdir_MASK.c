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
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct hfsplus_sb_info {int /*<<< orphan*/  vh_mutex; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int ENOTEMPTY ; 
 struct hfsplus_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dentry *dentry)
{
	struct hfsplus_sb_info *sbi = FUNC0(dir->i_sb);
	struct inode *inode = FUNC3(dentry);
	int res;

	if (inode->i_size != 2)
		return -ENOTEMPTY;

	FUNC7(&sbi->vh_mutex);
	res = FUNC4(inode->i_ino, dir, &dentry->d_name);
	if (res)
		goto out;
	FUNC1(inode);
	inode->i_ctime = FUNC2(inode);
	FUNC5(inode);
	FUNC6(inode);
out:
	FUNC8(&sbi->vh_mutex);
	return res;
}