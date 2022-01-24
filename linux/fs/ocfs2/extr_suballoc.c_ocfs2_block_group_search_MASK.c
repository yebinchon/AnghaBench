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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct ocfs2_suballoc_result {scalar_t__ sr_bit_offset; scalar_t__ sr_bits; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_blkno; int /*<<< orphan*/  bg_bits; scalar_t__ bg_free_bits_count; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct buffer_head*,int,int /*<<< orphan*/ ,struct ocfs2_suballoc_result*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long,unsigned long long) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
				    struct buffer_head *group_bh,
				    u32 bits_wanted, u32 min_bits,
				    u64 max_block,
				    struct ocfs2_suballoc_result *res)
{
	int ret = -ENOSPC;
	u64 blkoff;
	struct ocfs2_group_desc *bg = (struct ocfs2_group_desc *) group_bh->b_data;

	FUNC0(min_bits != 1);
	FUNC0(FUNC5(inode));

	if (bg->bg_free_bits_count) {
		ret = FUNC4(FUNC1(inode->i_sb),
							group_bh, bits_wanted,
							FUNC2(bg->bg_bits),
							res);
		if (!ret && max_block) {
			blkoff = FUNC3(bg->bg_blkno) +
				res->sr_bit_offset + res->sr_bits;
			FUNC6(
				(unsigned long long)blkoff,
				(unsigned long long)max_block);
			if (blkoff > max_block)
				ret = -ENOSPC;
		}
	}

	return ret;
}