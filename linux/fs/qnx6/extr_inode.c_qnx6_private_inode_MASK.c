#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct qnx6_sb_info {int dummy; } ;
struct qnx6_root_node {int /*<<< orphan*/  levels; int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
struct qnx6_inode_info {int /*<<< orphan*/  di_filelevels; int /*<<< orphan*/  di_block_ptr; } ;
struct inode {int i_mode; TYPE_1__* i_mapping; int /*<<< orphan*/  i_size; } ;
struct TYPE_2__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 struct qnx6_inode_info* FUNC0 (struct inode*) ; 
 struct qnx6_sb_info* FUNC1 (struct super_block*) ; 
 int S_IFREG ; 
 int S_IRUSR ; 
 int /*<<< orphan*/  FUNC2 (struct qnx6_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  qnx6_aops ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *s,
					struct qnx6_root_node *p)
{
	struct inode *inode = FUNC4(s);
	if (inode) {
		struct qnx6_inode_info *ei = FUNC0(inode);
		struct qnx6_sb_info *sbi = FUNC1(s);
		inode->i_size = FUNC2(sbi, p->size);
		FUNC3(ei->di_block_ptr, p->ptr, sizeof(p->ptr));
		ei->di_filelevels = p->levels;
		inode->i_mode = S_IFREG | S_IRUSR; /* probably wrong */
		inode->i_mapping->a_ops = &qnx6_aops;
	}
	return inode;
}