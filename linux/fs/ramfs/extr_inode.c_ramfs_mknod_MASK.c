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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t dev)
{
	struct inode * inode = FUNC3(dir->i_sb, dir, mode, dev);
	int error = -ENOSPC;

	if (inode) {
		FUNC1(dentry, inode);
		FUNC2(dentry);	/* Extra count - pin the dentry in core */
		error = 0;
		dir->i_mtime = dir->i_ctime = FUNC0(dir);
	}
	return error;
}