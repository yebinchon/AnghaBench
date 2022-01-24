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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct hfsplus_sb_info {int /*<<< orphan*/  vh_mutex; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct hfsplus_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct inode*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC11 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct inode *dir, struct dentry *dentry,
			 umode_t mode, dev_t rdev)
{
	struct hfsplus_sb_info *sbi = FUNC0(dir->i_sb);
	struct inode *inode;
	int res = -ENOMEM;

	FUNC15(&sbi->vh_mutex);
	inode = FUNC11(dir->i_sb, dir, mode);
	if (!inode)
		goto out;

	if (FUNC1(mode) || FUNC2(mode) || FUNC3(mode) || FUNC4(mode))
		FUNC12(inode, mode, rdev);

	res = FUNC6(inode->i_ino, dir, &dentry->d_name, inode);
	if (res)
		goto failed_mknod;

	res = FUNC9(inode, dir, &dentry->d_name);
	if (res == -EOPNOTSUPP)
		res = 0; /* Operation is not supported. */
	else if (res) {
		/* Try to delete anyway without error analysis. */
		FUNC7(inode->i_ino, dir, &dentry->d_name);
		goto failed_mknod;
	}

	FUNC10(dentry, inode, inode->i_ino);
	FUNC14(inode);
	goto out;

failed_mknod:
	FUNC5(inode);
	FUNC8(inode);
	FUNC13(inode);
out:
	FUNC16(&sbi->vh_mutex);
	return res;
}