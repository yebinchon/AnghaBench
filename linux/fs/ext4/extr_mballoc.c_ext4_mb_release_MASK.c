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
struct super_block {int /*<<< orphan*/  s_blocksize_bits; } ;
struct kmem_cache {int dummy; } ;
struct ext4_sb_info {int /*<<< orphan*/  s_locality_groups; int /*<<< orphan*/  s_mb_discarded; int /*<<< orphan*/  s_mb_preallocated; int /*<<< orphan*/  s_mb_generation_time; int /*<<< orphan*/  s_mb_buddies_generated; int /*<<< orphan*/  s_mb_lost_chunks; int /*<<< orphan*/  s_bal_breaks; int /*<<< orphan*/  s_bal_2orders; int /*<<< orphan*/  s_bal_goals; int /*<<< orphan*/  s_bal_ex_scanned; int /*<<< orphan*/  s_bal_success; int /*<<< orphan*/  s_bal_reqs; int /*<<< orphan*/  s_bal_allocated; scalar_t__ s_mb_stats; int /*<<< orphan*/  s_buddy_cache; int /*<<< orphan*/  s_mb_maxs; int /*<<< orphan*/  s_mb_offsets; int /*<<< orphan*/ * s_group_info; } ;
struct ext4_group_info {int /*<<< orphan*/  bb_bitmap; } ;
typedef  int ext4_group_t ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct ext4_group_info* FUNC5 (struct super_block*,int) ; 
 int FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_group_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct kmem_cache* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct kmem_cache*,struct ext4_group_info*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct super_block *sb)
{
	ext4_group_t ngroups = FUNC6(sb);
	ext4_group_t i;
	int num_meta_group_infos;
	struct ext4_group_info *grinfo;
	struct ext4_sb_info *sbi = FUNC2(sb);
	struct kmem_cache *cachep = FUNC12(sb->s_blocksize_bits);

	if (sbi->s_group_info) {
		for (i = 0; i < ngroups; i++) {
			FUNC4();
			grinfo = FUNC5(sb, i);
#ifdef DOUBLE_CHECK
			kfree(grinfo->bb_bitmap);
#endif
			FUNC7(sb, i);
			FUNC8(grinfo);
			FUNC10(sb, i);
			FUNC15(cachep, grinfo);
		}
		num_meta_group_infos = (ngroups +
				FUNC0(sb) - 1) >>
			FUNC1(sb);
		for (i = 0; i < num_meta_group_infos; i++)
			FUNC14(sbi->s_group_info[i]);
		FUNC16(sbi->s_group_info);
	}
	FUNC14(sbi->s_mb_offsets);
	FUNC14(sbi->s_mb_maxs);
	FUNC13(sbi->s_buddy_cache);
	if (sbi->s_mb_stats) {
		FUNC9(sb, KERN_INFO,
		       "mballoc: %u blocks %u reqs (%u success)",
				FUNC3(&sbi->s_bal_allocated),
				FUNC3(&sbi->s_bal_reqs),
				FUNC3(&sbi->s_bal_success));
		FUNC9(sb, KERN_INFO,
		      "mballoc: %u extents scanned, %u goal hits, "
				"%u 2^N hits, %u breaks, %u lost",
				FUNC3(&sbi->s_bal_ex_scanned),
				FUNC3(&sbi->s_bal_goals),
				FUNC3(&sbi->s_bal_2orders),
				FUNC3(&sbi->s_bal_breaks),
				FUNC3(&sbi->s_mb_lost_chunks));
		FUNC9(sb, KERN_INFO,
		       "mballoc: %lu generated and it took %Lu",
				sbi->s_mb_buddies_generated,
				sbi->s_mb_generation_time);
		FUNC9(sb, KERN_INFO,
		       "mballoc: %u preallocated, %u discarded",
				FUNC3(&sbi->s_mb_preallocated),
				FUNC3(&sbi->s_mb_discarded));
	}

	FUNC11(sbi->s_locality_groups);

	return 0;
}