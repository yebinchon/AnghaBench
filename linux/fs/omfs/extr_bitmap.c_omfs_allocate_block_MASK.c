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
typedef  unsigned int u64 ;
struct super_block {int s_blocksize; } ;
struct omfs_sb_info {unsigned int s_imap_size; scalar_t__ s_bitmap_ino; int /*<<< orphan*/  s_bitmap_lock; int /*<<< orphan*/ * s_imap; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 struct omfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct omfs_sb_info*,scalar_t__) ; 
 unsigned int FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC7 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned long*) ; 
 scalar_t__ FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC10(struct super_block *sb, u64 block)
{
	struct buffer_head *bh;
	struct omfs_sb_info *sbi = FUNC0(sb);
	int bits_per_entry = 8 * sb->s_blocksize;
	unsigned int map, bit;
	int ret = 0;
	u64 tmp;

	tmp = block;
	bit = FUNC3(tmp, bits_per_entry);
	map = tmp;

	FUNC5(&sbi->s_bitmap_lock);
	if (map >= sbi->s_imap_size || FUNC9(bit, sbi->s_imap[map]))
		goto out;

	if (sbi->s_bitmap_ino > 0) {
		bh = FUNC7(sb, FUNC2(sbi, sbi->s_bitmap_ino) + map);
		if (!bh)
			goto out;

		FUNC8(bit, (unsigned long *)bh->b_data);
		FUNC4(bh);
		FUNC1(bh);
	}
	ret = 1;
out:
	FUNC6(&sbi->s_bitmap_lock);
	return ret;
}