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
struct inode {int i_state; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELOOP ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOTDIR ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int I_NEW ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  S_IFDIR ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (struct super_block*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  ovl_inode_set ; 
 int /*<<< orphan*/  ovl_inode_test ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

struct inode *FUNC6(struct super_block *sb, struct dentry *dir)
{
	struct inode *key = FUNC1(dir);
	struct inode *trap;

	if (!FUNC2(dir))
		return FUNC0(-ENOTDIR);

	trap = FUNC3(sb, (unsigned long) key, ovl_inode_test,
			    ovl_inode_set, key);
	if (!trap)
		return FUNC0(-ENOMEM);

	if (!(trap->i_state & I_NEW)) {
		/* Conflicting layer roots? */
		FUNC4(trap);
		return FUNC0(-ELOOP);
	}

	trap->i_mode = S_IFDIR;
	trap->i_flags = S_DEAD;
	FUNC5(trap);

	return trap;
}