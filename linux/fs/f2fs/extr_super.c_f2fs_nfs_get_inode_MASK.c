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
struct inode {scalar_t__ i_generation; } ;
struct f2fs_sb_info {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 struct f2fs_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct inode *FUNC8(struct super_block *sb,
		u64 ino, u32 generation)
{
	struct f2fs_sb_info *sbi = FUNC2(sb);
	struct inode *inode;

	if (FUNC4(sbi, ino))
		return FUNC1(-ESTALE);

	/*
	 * f2fs_iget isn't quite right if the inode is currently unallocated!
	 * However f2fs_iget currently does appropriate checks to handle stale
	 * inodes so everything is OK.
	 */
	inode = FUNC5(sb, ino);
	if (FUNC3(inode))
		return FUNC0(inode);
	if (FUNC7(generation && inode->i_generation != generation)) {
		/* we didn't find the right inode.. */
		FUNC6(inode);
		return FUNC1(-ESTALE);
	}
	return inode;
}