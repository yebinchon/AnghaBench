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
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 struct inode* FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (struct super_block*,unsigned long,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  ovl_inode_test ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*,struct dentry*,int) ; 

struct inode *FUNC5(struct super_block *sb, struct dentry *real,
			       bool is_upper)
{
	struct inode *inode, *key = FUNC1(real);

	inode = FUNC2(sb, (unsigned long) key, ovl_inode_test, key);
	if (!inode)
		return NULL;

	if (!FUNC4(inode, is_upper ? NULL : real,
			      is_upper ? real : NULL, false)) {
		FUNC3(inode);
		return FUNC0(-ESTALE);
	}

	return inode;
}