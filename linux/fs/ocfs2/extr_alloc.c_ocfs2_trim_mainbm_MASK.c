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
typedef  scalar_t__ u32 ;
struct super_block {scalar_t__ s_blocksize; } ;
struct ocfs2_super {scalar_t__ s_clustersize_bits; scalar_t__ bitmap_cpg; scalar_t__ first_cluster_group_blkno; } ;
struct ocfs2_group_desc {int dummy; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_clusters; } ;
struct inode {int dummy; } ;
struct fstrim_range {scalar_t__ start; scalar_t__ len; scalar_t__ minlen; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  GLOBAL_BITMAP_SYSTEM_INODE ; 
 int /*<<< orphan*/  OCFS2_INVALID_SLOT ; 
 struct ocfs2_super* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct super_block*,scalar_t__) ; 
 struct inode* FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,struct ocfs2_dinode*,scalar_t__,struct buffer_head**) ; 
 int FUNC13 (struct super_block*,struct ocfs2_group_desc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static
int FUNC16(struct super_block *sb, struct fstrim_range *range)
{
	struct ocfs2_super *osb = FUNC0(sb);
	u64 start, len, trimmed = 0, first_group, last_group = 0, group = 0;
	int ret, cnt;
	u32 first_bit, last_bit, minlen;
	struct buffer_head *main_bm_bh = NULL;
	struct inode *main_bm_inode = NULL;
	struct buffer_head *gd_bh = NULL;
	struct ocfs2_dinode *main_bm;
	struct ocfs2_group_desc *gd = NULL;

	start = range->start >> osb->s_clustersize_bits;
	len = range->len >> osb->s_clustersize_bits;
	minlen = range->minlen >> osb->s_clustersize_bits;

	if (minlen >= osb->bitmap_cpg || range->len < sb->s_blocksize)
		return -EINVAL;

	FUNC15(start, len, minlen);

next_group:
	main_bm_inode = FUNC9(osb,
						    GLOBAL_BITMAP_SYSTEM_INODE,
						    OCFS2_INVALID_SLOT);
	if (!main_bm_inode) {
		ret = -EIO;
		FUNC6(ret);
		goto out;
	}

	FUNC2(main_bm_inode);

	ret = FUNC10(main_bm_inode, &main_bm_bh, 0);
	if (ret < 0) {
		FUNC6(ret);
		goto out_mutex;
	}
	main_bm = (struct ocfs2_dinode *)main_bm_bh->b_data;

	/*
	 * Do some check before trim the first group.
	 */
	if (!group) {
		if (start >= FUNC5(main_bm->i_clusters)) {
			ret = -EINVAL;
			goto out_unlock;
		}

		if (start + len > FUNC5(main_bm->i_clusters))
			len = FUNC5(main_bm->i_clusters) - start;

		/*
		 * Determine first and last group to examine based on
		 * start and len
		 */
		first_group = FUNC14(main_bm_inode, start);
		if (first_group == osb->first_cluster_group_blkno)
			first_bit = start;
		else
			first_bit = start - FUNC7(sb,
								first_group);
		last_group = FUNC14(main_bm_inode,
						       start + len - 1);
		group = first_group;
	}

	do {
		if (first_bit + len >= osb->bitmap_cpg)
			last_bit = osb->bitmap_cpg;
		else
			last_bit = first_bit + len;

		ret = FUNC12(main_bm_inode,
						  main_bm, group,
						  &gd_bh);
		if (ret < 0) {
			FUNC6(ret);
			break;
		}

		gd = (struct ocfs2_group_desc *)gd_bh->b_data;
		cnt = FUNC13(sb, gd, group,
				       first_bit, last_bit, minlen);
		FUNC1(gd_bh);
		gd_bh = NULL;
		if (cnt < 0) {
			ret = cnt;
			FUNC6(ret);
			break;
		}

		trimmed += cnt;
		len -= osb->bitmap_cpg - first_bit;
		first_bit = 0;
		if (group == osb->first_cluster_group_blkno)
			group = FUNC8(sb, osb->bitmap_cpg);
		else
			group += FUNC8(sb, osb->bitmap_cpg);
	} while (0);

out_unlock:
	FUNC11(main_bm_inode, 0);
	FUNC1(main_bm_bh);
	main_bm_bh = NULL;
out_mutex:
	FUNC3(main_bm_inode);
	FUNC4(main_bm_inode);

	/*
	 * If all the groups trim are not done or failed, but we should release
	 * main_bm related locks for avoiding the current IO starve, then go to
	 * trim the next group
	 */
	if (ret >= 0 && group <= last_group)
		goto next_group;
out:
	range->len = trimmed * sb->s_blocksize;
	return ret;
}