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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct super_block {int /*<<< orphan*/  s_fs_info; } ;
struct nilfs_root {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  NILFS_ROOT_INO ; 
 struct dentry* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct super_block*,struct nilfs_root*,int /*<<< orphan*/ ) ; 
 struct nilfs_root* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_root*) ; 

__attribute__((used)) static struct dentry *FUNC9(struct super_block *sb, u64 cno,
				       u64 ino, u32 gen)
{
	struct nilfs_root *root;
	struct inode *inode;

	if (ino < FUNC3(sb) && ino != NILFS_ROOT_INO)
		return FUNC1(-ESTALE);

	root = FUNC7(sb->s_fs_info, cno);
	if (!root)
		return FUNC1(-ESTALE);

	inode = FUNC6(sb, root, ino);
	FUNC8(root);

	if (FUNC2(inode))
		return FUNC0(inode);
	if (gen && inode->i_generation != gen) {
		FUNC5(inode);
		return FUNC1(-ESTALE);
	}
	return FUNC4(inode);
}