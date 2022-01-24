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
struct inode {char* i_link; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_USER ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*,struct inode*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  simple_symlink_inode_operations ; 

__attribute__((used)) static int FUNC6(struct inode *dir, struct dentry *dentry,
		       const char *target)
{
	char *link = FUNC5(target, GFP_USER | __GFP_NOWARN);
	struct inode *inode;

	if (!link)
		return -ENOMEM;

	inode = FUNC3(dir->i_sb, dir, S_IRWXUGO | S_IFLNK);
	if (FUNC0(inode)) {
		FUNC4(link);
		return FUNC1(inode);
	}

	inode->i_op = &simple_symlink_inode_operations;
	inode->i_link = link;

	FUNC2(dentry, inode, dir);
	return 0;
}