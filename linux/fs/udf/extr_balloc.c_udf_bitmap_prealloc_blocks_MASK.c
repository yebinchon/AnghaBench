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
typedef  scalar_t__ uint32_t ;
typedef  size_t uint16_t ;
struct udf_sb_info {int /*<<< orphan*/  s_alloc_mutex; TYPE_1__* s_partmaps; } ;
struct udf_bitmap {struct buffer_head** s_block_bitmap; } ;
struct super_block {int s_blocksize_bits; int s_blocksize; } ;
struct spaceBitmapDesc {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ s_partition_len; } ;

/* Variables and functions */
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*,struct udf_bitmap*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb,
				      struct udf_bitmap *bitmap,
				      uint16_t partition, uint32_t first_block,
				      uint32_t block_count)
{
	struct udf_sb_info *sbi = FUNC0(sb);
	int alloc_count = 0;
	int bit, block, block_group;
	int bitmap_nr;
	struct buffer_head *bh;
	__u32 part_len;

	FUNC3(&sbi->s_alloc_mutex);
	part_len = sbi->s_partmaps[partition].s_partition_len;
	if (first_block >= part_len)
		goto out;

	if (first_block + block_count > part_len)
		block_count = part_len - first_block;

	do {
		block = first_block + (sizeof(struct spaceBitmapDesc) << 3);
		block_group = block >> (sb->s_blocksize_bits + 3);

		bitmap_nr = FUNC1(sb, bitmap, block_group);
		if (bitmap_nr < 0)
			goto out;
		bh = bitmap->s_block_bitmap[bitmap_nr];

		bit = block % (sb->s_blocksize << 3);

		while (bit < (sb->s_blocksize << 3) && block_count > 0) {
			if (!FUNC6(bit, bh->b_data))
				goto out;
			block_count--;
			alloc_count++;
			bit++;
			block++;
		}
		FUNC2(bh);
	} while (block_count > 0);

out:
	FUNC5(sb, partition, -alloc_count);
	FUNC4(&sbi->s_alloc_mutex);
	return alloc_count;
}