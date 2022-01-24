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
struct other_inode {unsigned long orig_ino; struct ext4_inode* raw_inode; } ;
struct ext4_inode {int dummy; } ;
struct TYPE_2__ {int s_inodes_per_block; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,unsigned long,int /*<<< orphan*/ ,struct other_inode*) ; 
 int /*<<< orphan*/  other_inode_match ; 

__attribute__((used)) static void FUNC3(struct super_block *sb,
					  unsigned long orig_ino, char *buf)
{
	struct other_inode oi;
	unsigned long ino;
	int i, inodes_per_block = FUNC1(sb)->s_inodes_per_block;
	int inode_size = FUNC0(sb);

	oi.orig_ino = orig_ino;
	/*
	 * Calculate the first inode in the inode table block.  Inode
	 * numbers are one-based.  That is, the first inode in a block
	 * (assuming 4k blocks and 256 byte inodes) is (n*16 + 1).
	 */
	ino = ((orig_ino - 1) & ~(inodes_per_block - 1)) + 1;
	for (i = 0; i < inodes_per_block; i++, ino++, buf += inode_size) {
		if (ino == orig_ino)
			continue;
		oi.raw_inode = (struct ext4_inode *) buf;
		(void) FUNC2(sb, ino, other_inode_match, &oi);
	}
}