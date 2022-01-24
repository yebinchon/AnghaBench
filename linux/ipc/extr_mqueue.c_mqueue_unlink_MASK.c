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
struct inode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ DIRENT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = FUNC1(dentry);

	dir->i_ctime = dir->i_mtime = dir->i_atime = FUNC0(dir);
	dir->i_size -= DIRENT_SIZE;
	FUNC3(inode);
	FUNC2(dentry);
	return 0;
}