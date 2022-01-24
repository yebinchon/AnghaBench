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
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,char const*,int) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(struct inode *dir,
			struct dentry *dentry, const char *symname)
{
	struct inode *inode;
	int error = -ENOSPC;

	inode = FUNC3(dir->i_sb, dir, S_IFLNK|S_IRWXUGO, 0);
	if (inode) {
		int l = FUNC6(symname)+1;
		error = FUNC5(inode, symname, l);
		if (!error) {
			FUNC1(dentry, inode);
			FUNC2(dentry);
		} else
			FUNC4(inode);
	}
	dir->i_ctime = dir->i_mtime = FUNC0(dir);

	return error;
}