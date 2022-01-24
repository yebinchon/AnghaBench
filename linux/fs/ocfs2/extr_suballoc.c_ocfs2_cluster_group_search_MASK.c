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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_suballoc_result {scalar_t__ sr_bit_offset; scalar_t__ sr_bits; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_bits; int /*<<< orphan*/  bg_blkno; scalar_t__ bg_free_bits_count; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_2__ {unsigned int ip_clusters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ocfs2_super*,struct buffer_head*,scalar_t__,unsigned int,struct ocfs2_suballoc_result*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long long,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC12(struct inode *inode,
				      struct buffer_head *group_bh,
				      u32 bits_wanted, u32 min_bits,
				      u64 max_block,
				      struct ocfs2_suballoc_result *res)
{
	int search = -ENOSPC;
	int ret;
	u64 blkoff;
	struct ocfs2_group_desc *gd = (struct ocfs2_group_desc *) group_bh->b_data;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	unsigned int max_bits, gd_cluster_off;

	FUNC0(!FUNC8(inode));

	if (gd->bg_free_bits_count) {
		max_bits = FUNC3(gd->bg_bits);

		/* Tail groups in cluster bitmaps which aren't cpg
		 * aligned are prone to partial extension by a failed
		 * fs resize. If the file system resize never got to
		 * update the dinode cluster count, then we don't want
		 * to trust any clusters past it, regardless of what
		 * the group descriptor says. */
		gd_cluster_off = FUNC6(inode->i_sb,
							  FUNC4(gd->bg_blkno));
		if ((gd_cluster_off + max_bits) >
		    FUNC1(inode)->ip_clusters) {
			max_bits = FUNC1(inode)->ip_clusters - gd_cluster_off;
			FUNC11(
				(unsigned long long)FUNC4(gd->bg_blkno),
				FUNC3(gd->bg_bits),
				FUNC1(inode)->ip_clusters, max_bits);
		}

		ret = FUNC5(osb,
							group_bh, bits_wanted,
							max_bits, res);
		if (ret)
			return ret;

		if (max_block) {
			blkoff = FUNC7(inode->i_sb,
							  gd_cluster_off +
							  res->sr_bit_offset +
							  res->sr_bits);
			FUNC10(
				(unsigned long long)blkoff,
				(unsigned long long)max_block);
			if (blkoff > max_block)
				return -ENOSPC;
		}

		/* ocfs2_block_group_find_clear_bits() might
		 * return success, but we still want to return
		 * -ENOSPC unless it found the minimum number
		 * of bits. */
		if (min_bits <= res->sr_bits)
			search = 0; /* success */
		else if (res->sr_bits) {
			/*
			 * Don't show bits which we'll be returning
			 * for allocation to the local alloc bitmap.
			 */
			FUNC9(osb, res->sr_bits);
		}
	}

	return search;
}