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
typedef  scalar_t__ sysv_zone_t ;
struct sysv_sb_info {scalar_t__* s_bcache; unsigned int s_firstdatazone; unsigned int s_nzones; unsigned int s_flc_size; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_free_blocks; void** s_bcache_count; scalar_t__ s_block_base; } ;
struct super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  void* __fs16 ;

/* Variables and functions */
 struct sysv_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (struct sysv_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 unsigned int FUNC4 (struct sysv_sb_info*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysv_sb_info*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC6 (struct sysv_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 struct buffer_head* FUNC12 (struct super_block*,unsigned int) ; 

sysv_zone_t FUNC13(struct super_block * sb)
{
	struct sysv_sb_info *sbi = FUNC0(sb);
	unsigned int block;
	sysv_zone_t nr;
	struct buffer_head * bh;
	unsigned count;

	FUNC9(&sbi->s_lock);
	count = FUNC4(sbi, *sbi->s_bcache_count);

	if (count == 0) /* Applies only to Coherent FS */
		goto Enospc;
	nr = sbi->s_bcache[--count];
	if (nr == 0)  /* Applies only to Xenix FS, SystemV FS */
		goto Enospc;

	block = FUNC6(sbi, nr);

	*sbi->s_bcache_count = FUNC2(sbi, count);

	if (block < sbi->s_firstdatazone || block >= sbi->s_nzones) {
		FUNC11("sysv_new_block: new block %d is not in data zone\n",
			block);
		goto Enospc;
	}

	if (count == 0) { /* the last block continues the free list */
		unsigned count;

		block += sbi->s_block_base;
		if (!(bh = FUNC12(sb, block))) {
			FUNC11("sysv_new_block: cannot read free-list block\n");
			/* retry this same block next time */
			*sbi->s_bcache_count = FUNC2(sbi, 1);
			goto Enospc;
		}
		count = FUNC4(sbi, *(__fs16*)bh->b_data);
		if (count > sbi->s_flc_size) {
			FUNC11("sysv_new_block: free-list block with >flc_size entries\n");
			FUNC1(bh);
			goto Enospc;
		}
		*sbi->s_bcache_count = FUNC2(sbi, count);
		FUNC8(sbi->s_bcache, FUNC7(sb, bh),
				count * sizeof(sysv_zone_t));
		FUNC1(bh);
	}
	/* Now the free list head in the superblock is valid again. */
	FUNC5(sbi, sbi->s_free_blocks, -1);
	FUNC3(sb);
	FUNC10(&sbi->s_lock);
	return nr;

Enospc:
	FUNC10(&sbi->s_lock);
	return 0;
}