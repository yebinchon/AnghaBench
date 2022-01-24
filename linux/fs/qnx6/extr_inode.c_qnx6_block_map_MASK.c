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
typedef  unsigned int u32 ;
struct super_block {int dummy; } ;
struct qnx6_sb_info {int s_ptrbits; } ;
struct qnx6_inode_info {int di_filelevels; int /*<<< orphan*/ * di_block_ptr; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __fs32 ;

/* Variables and functions */
 struct qnx6_inode_info* FUNC0 (struct inode*) ; 
 int QNX6_NO_DIRECT_POINTERS ; 
 struct qnx6_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC6 (struct super_block*,unsigned int) ; 

__attribute__((used)) static unsigned FUNC7(struct inode *inode, unsigned no)
{
	struct super_block *s = inode->i_sb;
	struct qnx6_sb_info *sbi = FUNC1(s);
	struct qnx6_inode_info *ei = FUNC0(inode);
	unsigned block = 0;
	struct buffer_head *bh;
	__fs32 ptr;
	int levelptr;
	int ptrbits = sbi->s_ptrbits;
	int bitdelta;
	u32 mask = (1 << ptrbits) - 1;
	int depth = ei->di_filelevels;
	int i;

	bitdelta = ptrbits * depth;
	levelptr = no >> bitdelta;

	if (levelptr > QNX6_NO_DIRECT_POINTERS - 1) {
		FUNC3("Requested file block number (%u) too big.", no);
		return 0;
	}

	block = FUNC5(s, ei->di_block_ptr[levelptr]);

	for (i = 0; i < depth; i++) {
		bh = FUNC6(s, block);
		if (!bh) {
			FUNC3("Error reading block (%u)\n", block);
			return 0;
		}
		bitdelta -= ptrbits;
		levelptr = (no >> bitdelta) & mask;
		ptr = ((__fs32 *)bh->b_data)[levelptr];

		if (!FUNC4(ptr))
			return 0;

		block = FUNC5(s, ptr);
		FUNC2(bh);
	}
	return block;
}