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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (struct super_block*,unsigned long,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  ovl_inode_test ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

bool FUNC6(struct super_block *sb, struct dentry *dir)
{
	struct inode *key = FUNC1(dir);
	struct inode *trap;
	bool res;

	trap = FUNC2(sb, (unsigned long) key, ovl_inode_test, key);
	if (!trap)
		return false;

	res = FUNC0(trap) && !FUNC5(trap) &&
				  !FUNC4(trap);

	FUNC3(trap);
	return res;
}