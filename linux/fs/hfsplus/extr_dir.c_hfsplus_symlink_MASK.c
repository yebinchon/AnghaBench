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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct hfsplus_sb_info {int /*<<< orphan*/  vh_mutex; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct hfsplus_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct inode*,char const*,scalar_t__) ; 
 scalar_t__ FUNC13 (char const*) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry,
			   const char *symname)
{
	struct hfsplus_sb_info *sbi = FUNC0(dir->i_sb);
	struct inode *inode;
	int res = -ENOMEM;

	FUNC10(&sbi->vh_mutex);
	inode = FUNC7(dir->i_sb, dir, S_IFLNK | S_IRWXUGO);
	if (!inode)
		goto out;

	res = FUNC12(inode, symname, FUNC13(symname) + 1);
	if (res)
		goto out_err;

	res = FUNC2(inode->i_ino, dir, &dentry->d_name, inode);
	if (res)
		goto out_err;

	res = FUNC5(inode, dir, &dentry->d_name);
	if (res == -EOPNOTSUPP)
		res = 0; /* Operation is not supported. */
	else if (res) {
		/* Try to delete anyway without error analysis. */
		FUNC3(inode->i_ino, dir, &dentry->d_name);
		goto out_err;
	}

	FUNC6(dentry, inode, inode->i_ino);
	FUNC9(inode);
	goto out;

out_err:
	FUNC1(inode);
	FUNC4(inode);
	FUNC8(inode);
out:
	FUNC11(&sbi->vh_mutex);
	return res;
}