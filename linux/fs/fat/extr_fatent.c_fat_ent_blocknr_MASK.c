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
struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct msdos_sb_info {int fatent_shift; scalar_t__ fat_start; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct msdos_sb_info*,int) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb, int entry,
			    int *offset, sector_t *blocknr)
{
	struct msdos_sb_info *sbi = FUNC0(sb);
	int bytes = (entry << sbi->fatent_shift);
	FUNC1(!FUNC2(sbi, entry));
	*offset = bytes & (sb->s_blocksize - 1);
	*blocknr = sbi->fat_start + (bytes >> sb->s_blocksize_bits);
}