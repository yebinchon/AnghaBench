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
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

int FUNC4(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = FUNC1(dentry);

	inode->i_ctime = dir->i_ctime = dir->i_mtime = FUNC0(inode);
	FUNC3(inode);
	FUNC2(dentry);
	return 0;
}