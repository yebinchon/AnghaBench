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
struct super_operations {scalar_t__ free_inode; int /*<<< orphan*/  (* destroy_inode ) (struct inode*) ;struct inode* (* alloc_inode ) (struct super_block*) ;} ;
struct super_block {struct super_operations* s_op; } ;
struct inode {int /*<<< orphan*/  i_rcu; scalar_t__ free_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inode_cachep ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,struct inode*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *FUNC6(struct super_block *sb)
{
	const struct super_operations *ops = sb->s_op;
	struct inode *inode;

	if (ops->alloc_inode)
		inode = ops->alloc_inode(sb);
	else
		inode = FUNC2(inode_cachep, GFP_KERNEL);

	if (!inode)
		return NULL;

	if (FUNC5(FUNC1(sb, inode))) {
		if (ops->destroy_inode) {
			ops->destroy_inode(inode);
			if (!ops->free_inode)
				return NULL;
		}
		inode->free_inode = ops->free_inode;
		FUNC0(&inode->i_rcu);
		return NULL;
	}

	return inode;
}