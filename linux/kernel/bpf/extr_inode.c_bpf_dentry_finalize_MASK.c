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
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 

__attribute__((used)) static void FUNC3(struct dentry *dentry, struct inode *inode,
				struct inode *dir)
{
	FUNC1(dentry, inode);
	FUNC2(dentry);

	dir->i_mtime = FUNC0(dir);
	dir->i_ctime = dir->i_mtime;
}