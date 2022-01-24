#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int s_blocksize; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct ext4_sb_info {int* s_mb_maxs; } ;
struct ext4_buddy {TYPE_1__* bd_info; int /*<<< orphan*/  bd_group; int /*<<< orphan*/  bd_bitmap; struct super_block* bd_sb; } ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
struct TYPE_3__ {int bb_free; int bb_first_free; int* bb_counters; int /*<<< orphan*/  bb_fragments; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ext4_sb_info*,int) ; 
 int /*<<< orphan*/  EXT4_GROUP_INFO_BBITMAP_CORRUPT ; 
 int FUNC2 (TYPE_1__*) ; 
 struct ext4_sb_info* FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ext4_buddy*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_buddy*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct ext4_buddy*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ext4_buddy*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,TYPE_1__*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(struct inode *inode, struct ext4_buddy *e4b,
			   int first, int count)
{
	int left_is_free = 0;
	int right_is_free = 0;
	int block;
	int last = first + count - 1;
	struct super_block *sb = e4b->bd_sb;

	if (FUNC4(count == 0))
		return;
	FUNC0(last >= (sb->s_blocksize << 3));
	FUNC5(FUNC7(sb, e4b->bd_group));
	/* Don't bother if the block group is corrupt. */
	if (FUNC17(FUNC2(e4b->bd_info)))
		return;

	FUNC11(e4b);
	FUNC12(inode, e4b, first, count);

	e4b->bd_info->bb_free += count;
	if (first < e4b->bd_info->bb_first_free)
		e4b->bd_info->bb_first_free = first;

	/* access memory sequentially: check left neighbour,
	 * clear range and then check right neighbour
	 */
	if (first != 0)
		left_is_free = !FUNC16(first - 1, e4b->bd_bitmap);
	block = FUNC15(e4b->bd_bitmap, first, count);
	if (last + 1 < FUNC3(sb)->s_mb_maxs[0])
		right_is_free = !FUNC16(last + 1, e4b->bd_bitmap);

	if (FUNC17(block != -1)) {
		struct ext4_sb_info *sbi = FUNC3(sb);
		ext4_fsblk_t blocknr;

		blocknr = FUNC6(sb, e4b->bd_group);
		blocknr += FUNC1(sbi, block);
		FUNC8(sb, e4b->bd_group,
				      inode ? inode->i_ino : 0,
				      blocknr,
				      "freeing already freed block "
				      "(bit %u); block bitmap corrupt.",
				      block);
		FUNC9(sb, e4b->bd_group,
				EXT4_GROUP_INFO_BBITMAP_CORRUPT);
		FUNC13(e4b);
		goto done;
	}

	/* let's maintain fragments counter */
	if (left_is_free && right_is_free)
		e4b->bd_info->bb_fragments--;
	else if (!left_is_free && !right_is_free)
		e4b->bd_info->bb_fragments++;

	/* buddy[0] == bd_bitmap is a special case, so handle
	 * it right away and let mb_buddy_mark_free stay free of
	 * zero order checks.
	 * Check if neighbours are to be coaleasced,
	 * adjust bitmap bb_counters and borders appropriately.
	 */
	if (first & 1) {
		first += !left_is_free;
		e4b->bd_info->bb_counters[0] += left_is_free ? -1 : 1;
	}
	if (!(last & 1)) {
		last -= !right_is_free;
		e4b->bd_info->bb_counters[0] += right_is_free ? -1 : 1;
	}

	if (first <= last)
		FUNC10(e4b, first >> 1, last >> 1);

done:
	FUNC14(sb, e4b->bd_info);
	FUNC11(e4b);
}