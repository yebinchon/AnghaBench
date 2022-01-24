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
struct super_block {int dummy; } ;
struct nilfs_root {int dummy; } ;
struct inode {int i_state; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int I_NEW ; 
 int FUNC1 (struct super_block*,struct nilfs_root*,unsigned long,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,struct nilfs_root*,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

struct inode *FUNC6(struct super_block *sb, struct nilfs_root *root,
			 unsigned long ino)
{
	struct inode *inode;
	int err;

	inode = FUNC3(sb, root, ino);
	if (FUNC4(!inode))
		return FUNC0(-ENOMEM);
	if (!(inode->i_state & I_NEW))
		return inode;

	err = FUNC1(sb, root, ino, inode);
	if (FUNC4(err)) {
		FUNC2(inode);
		return FUNC0(err);
	}
	FUNC5(inode);
	return inode;
}