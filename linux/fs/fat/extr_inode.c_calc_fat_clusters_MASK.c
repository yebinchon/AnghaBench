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
struct super_block {int s_blocksize; } ;
struct msdos_sb_info {int fat_bits; unsigned long fat_length; } ;

/* Variables and functions */
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct msdos_sb_info*) ; 

__attribute__((used)) static unsigned long FUNC2(struct super_block *sb)
{
	struct msdos_sb_info *sbi = FUNC0(sb);

	/* Divide first to avoid overflow */
	if (!FUNC1(sbi)) {
		unsigned long ent_per_sec = sb->s_blocksize * 8 / sbi->fat_bits;
		return ent_per_sec * sbi->fat_length;
	}

	return sbi->fat_length * sb->s_blocksize * 8 / sbi->fat_bits;
}