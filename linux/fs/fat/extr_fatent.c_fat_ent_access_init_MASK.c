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
struct msdos_sb_info {int fatent_shift; int /*<<< orphan*/  fat_bits; int /*<<< orphan*/ * fatent_ops; int /*<<< orphan*/  fat_lock; } ;

/* Variables and functions */
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  fat12_ops ; 
 int /*<<< orphan*/  fat16_ops ; 
 int /*<<< orphan*/  fat32_ops ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct msdos_sb_info*) ; 
 scalar_t__ FUNC3 (struct msdos_sb_info*) ; 
 scalar_t__ FUNC4 (struct msdos_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct super_block *sb)
{
	struct msdos_sb_info *sbi = FUNC0(sb);

	FUNC5(&sbi->fat_lock);

	if (FUNC4(sbi)) {
		sbi->fatent_shift = 2;
		sbi->fatent_ops = &fat32_ops;
	} else if (FUNC3(sbi)) {
		sbi->fatent_shift = 1;
		sbi->fatent_ops = &fat16_ops;
	} else if (FUNC2(sbi)) {
		sbi->fatent_shift = -1;
		sbi->fatent_ops = &fat12_ops;
	} else {
		FUNC1(sb, "invalid FAT variant, %u bits", sbi->fat_bits);
	}
}