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
struct super_block {int dummy; } ;
struct kernfs_super_info {int /*<<< orphan*/  root; } ;
struct kernfs_node {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;

/* Variables and functions */
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct kernfs_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct super_block*,struct kernfs_node*) ; 
 struct kernfs_super_info* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_node*) ; 

__attribute__((used)) static struct inode *FUNC6(struct super_block *sb,
		u64 ino, u32 generation)
{
	struct kernfs_super_info *info = FUNC4(sb);
	struct inode *inode;
	struct kernfs_node *kn;

	if (ino == 0)
		return FUNC0(-ESTALE);

	kn = FUNC2(info->root, ino);
	if (!kn)
		return FUNC0(-ESTALE);
	inode = FUNC3(sb, kn);
	FUNC5(kn);
	if (!inode)
		return FUNC0(-ESTALE);

	if (generation && inode->i_generation != generation) {
		/* we didn't find the right inode.. */
		FUNC1(inode);
		return FUNC0(-ESTALE);
	}
	return inode;
}