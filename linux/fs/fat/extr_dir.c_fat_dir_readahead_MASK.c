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
struct msdos_sb_info {int sec_per_clus; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int sector_t ;

/* Variables and functions */
 scalar_t__ MSDOS_ROOT_INO ; 
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct msdos_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int) ; 
 struct buffer_head* FUNC5 (struct super_block*,int) ; 

__attribute__((used)) static inline void FUNC6(struct inode *dir, sector_t iblock,
				     sector_t phys)
{
	struct super_block *sb = dir->i_sb;
	struct msdos_sb_info *sbi = FUNC0(sb);
	struct buffer_head *bh;
	int sec;

	/* This is not a first sector of cluster, or sec_per_clus == 1 */
	if ((iblock & (sbi->sec_per_clus - 1)) || sbi->sec_per_clus == 1)
		return;
	/* root dir of FAT12/FAT16 */
	if (!FUNC3(sbi) && (dir->i_ino == MSDOS_ROOT_INO))
		return;

	bh = FUNC5(sb, phys);
	if (bh == NULL || !FUNC2(bh)) {
		for (sec = 0; sec < sbi->sec_per_clus; sec++)
			FUNC4(sb, phys + sec);
	}
	FUNC1(bh);
}